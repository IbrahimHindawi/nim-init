
const hhkMatrix = "kinc/math/matrix.h"

type
    kinc_matrix3x3_t* {.importc:"kinc_matrix3x3_t", header:hhkMatrix.} = object
        m*: array[3 * 3, cfloat]
    kinc_matrix4x4_t* {.importc:"kinc_matrix4x4_t", header:hhkMatrix.} = object
        m*: array[4 * 4, cfloat]

proc kinc_matrix3x3_get*(matrix: ptr kinc_matrix3x3_t, x: cint, y: cint):cfloat
    {.header: hhkMatrix.}
proc kinc_matrix3x3_set*(matrix: ptr kinc_matrix3x3_t, x: cint, y: cint, value: cfloat )
    {.header: hhkMatrix.}
proc kinc_matrix3x3_transpose*(matrix: ptr kinc_matrix3x3_t)
    {.header: hhkMatrix.}
proc kinc_matrix3x3_identity*(): kinc_matrix3x3_t
    {.header: hhkMatrix.}
proc kinc_matrix3x_rotation_x*(alpha: cfloat): kinc_matrix3x3_t
    {.header: hhkMatrix.}
proc kinc_matrix3x_rotation_y*(alpha: cfloat): kinc_matrix3x3_t
    {.header: hhkMatrix.}
proc kinc_matrix3x_rotation_z*(alpha: cfloat): kinc_matrix3x3_t
    {.header: hhkMatrix.}

proc kinc_matrix4x4_get*(matrix: ptr kinc_matrix4x4_t, x: cint, y: cint):cfloat
    {.header: hhkMatrix.}
proc kinc_matrix4x4_transpose*(matrix: ptr kinc_matrix4x4_t)
    {.header: hhkMatrix.}
