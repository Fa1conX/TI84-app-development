#include <assert.h>
#include <math.h>

#include "bjt_math.h"

static void assert_near(double actual, double expected)
{
    assert(fabs(actual - expected) < 1e-9);
}

int main(void)
{
    bjt_operating_point_t point;

    assert_near(bjt_fixed_bias_ib(10.0, 0.7, 930000.0),
                9.3 / 930000.0);
    assert_near(bjt_collector_feedback_ib(10.0, 0.7, 470000.0, 100.0,
                                          1000.0),
                9.3 / 571000.0);
    assert_near(bjt_voltage_divider_thevenin(12.0, 47000.0, 10000.0),
                12.0 * 10000.0 / 57000.0);
    assert_near(bjt_voltage_divider_ib(2.1052631578947367, 0.7, 8245.61403508772,
                                      100.0, 1000.0),
                (2.1052631578947367 - 0.7) /
                    (8245.61403508772 + 101000.0));

    point = bjt_operating_point(10.0, 930000.0, 1000.0, 0.0, 100.0,
                                0.7, 0.2);
    assert(point.region == BJT_FORWARD_ACTIVE);
    assert_near(point.ic, 0.001);
    assert_near(point.vce, 9.0);

    point = bjt_operating_point(5.0, 1000.0, 1000.0, 0.0, 100.0,
                                0.7, 0.2);
    assert(point.region == BJT_SATURATION);
    assert_near(point.vce, 0.2);

    point = bjt_operating_point(0.5, 1000.0, 1000.0, 0.0, 100.0,
                                0.7, 0.2);
    assert(point.region == BJT_CUTOFF);

    return 0;
}
