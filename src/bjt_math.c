#include "bjt_math.h"

double bjt_fixed_bias_ib(double vcc, double vbe, double rb)
{
    return (vcc - vbe) / rb;
}

double bjt_collector_feedback_ib(double vcc, double vbe, double rb,
                                 double beta, double rc)
{
    return (vcc - vbe) / (rb + (beta + 1.0) * rc);
}

double bjt_voltage_divider_thevenin(double vcc, double r1, double r2)
{
    return vcc * r2 / (r1 + r2);
}

double bjt_voltage_divider_ib(double vth, double vbe, double rth,
                              double beta, double re)
{
    return (vth - vbe) / (rth + (beta + 1.0) * re);
}

bjt_operating_point_t bjt_operating_point(double vcc, double rb, double rc,
                                          double re, double beta,
                                          double vbe, double vcesat)
{
    bjt_operating_point_t point;
    const double ib = bjt_fixed_bias_ib(vcc, vbe, rb);
    const double ic_active = beta * ib;
    const double ie_active = (beta + 1.0) * ib;
    const double vc_active = vcc - ic_active * rc;
    const double ve_active = ie_active * re;
    const double vce_active = vc_active - ve_active;

    point.ib = ib;
    point.vbe = vbe;

    if (ib <= 0.0) {
        point.ic = 0.0;
        point.ie = 0.0;
        point.vc = vcc;
        point.ve = 0.0;
        point.vce = vcc;
        point.power = 0.0;
        point.region = BJT_CUTOFF;
    } else if (vce_active <= vcesat) {
        const double current = (vcc - vcesat) / (rc + re);

        point.ic = current;
        point.ie = current;
        point.vc = vcc - current * rc;
        point.ve = current * re;
        point.vce = vcesat;
        point.power = point.vce * point.ic;
        point.region = BJT_SATURATION;
    } else {
        point.ic = ic_active;
        point.ie = ie_active;
        point.vc = vc_active;
        point.ve = ve_active;
        point.vce = vce_active;
        point.power = point.vce * point.ic;
        point.region = BJT_FORWARD_ACTIVE;
    }

    return point;
}
