#ifndef BJT_MATH_H
#define BJT_MATH_H

typedef enum {
    BJT_CUTOFF,
    BJT_FORWARD_ACTIVE,
    BJT_SATURATION,
    BJT_REVERSE_ACTIVE
} bjt_region_t;

typedef struct {
    double ib;
    double ic;
    double ie;
    double vbe;
    double vc;
    double ve;
    double vce;
    double power;
    bjt_region_t region;
} bjt_operating_point_t;

double bjt_fixed_bias_ib(double vcc, double vbe, double rb);
double bjt_collector_feedback_ib(double vcc, double vbe, double rb,
                                 double beta, double rc);
double bjt_voltage_divider_thevenin(double vcc, double r1, double r2);
double bjt_voltage_divider_ib(double vth, double vbe, double rth,
                              double beta, double re);
bjt_operating_point_t bjt_operating_point(double vcc, double rb, double rc,
                                          double re, double beta,
                                          double vbe, double vcesat);

#endif
