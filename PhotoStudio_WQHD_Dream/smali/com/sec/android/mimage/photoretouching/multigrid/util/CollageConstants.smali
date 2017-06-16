.class public Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;
.super Ljava/lang/Object;
.source "CollageConstants.java"


# static fields
.field public static final ADJUSTMENT_SERVICE:I = 0x1

.field public static final COLLAGE_ANIM_DURATION:I = 0xbb8

.field public static COLOR_01:I = 0x0

.field public static COLOR_02:I = 0x0

.field public static COLOR_03:I = 0x0

.field public static COLOR_04:I = 0x0

.field public static COLOR_05:I = 0x0

.field public static COLOR_06:I = 0x0

.field public static COLOR_07:I = 0x0

.field public static COLOR_08:I = 0x0

.field public static COLOR_09:I = 0x0

.field public static final COLOR_10:I = -0xcc9803

.field public static final COLOR_11:I = -0x595a5b

.field public static final COLOR_12:I = -0xc9c9ca

.field public static final COLOR_13:I = -0x1000000

.field public static final COLOR_14:I = -0x199e

.field public static final COMPONENT_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field public static final DEFAULT_ASPECT_RATIO:I = 0x7f0e0120

.field public static final DEFAULT_MARGIN:I = 0x2

.field public static final DEFAULT_ROUNDEDNESS:F = 0.0f

.field public static final DL_BAR_SIZE:I = 0x12

.field public static final DL_MIN_SIZE:F = 0.1f

.field public static final DL_SELECTION_COLOR:[F

.field public static final DL_SELECT_SIZE:I = 0x4b

.field public static final DL_TOUCH_OFFSET:I = 0x4b

.field public static final DRAG_BG_COLOR:[F

.field public static final DRAG_MOVE_COLOR:[F

.field public static final EFFECT_SERVICE:I = 0x2

.field public static ENABLE_DL_FEATURE:Z = false

.field public static final FILE_DIRECTORY:Ljava/lang/String;

.field public static final FILE_NAME:Ljava/lang/String; = ".collage_temp.jpg"

.field public static final MAX_GRIDS:I

.field public static final MAX_MARGIN:F = 25.0f

.field public static final MAX_PREVIEW_SIZE:I = 0x200000

.field public static final MAX_SCALE:F = 10.0f

.field public static final PE_RESULT_PATH:Ljava/lang/String;

.field public static final SAVE_RESOLUTION:I = 0x800000

.field public static final SELECTION_COLOR:[F

.field public static final SEL_STROKE:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "PEDIT_CollageConstants"

.field private static final collageData:[[[[F

.field public static final idAspectRatio_1_x_6:I = 0x45


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-array v0, v11, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->SELECTION_COLOR:[F

    new-array v0, v11, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->DL_SELECTION_COLOR:[F

    new-array v0, v11, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->DRAG_BG_COLOR:[F

    new-array v0, v11, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->DRAG_MOVE_COLOR:[F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "._lpetemp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->FILE_DIRECTORY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->FILE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.collage_result.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->PE_RESULT_PATH:Ljava/lang/String;

    sput-boolean v7, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->ENABLE_DL_FEATURE:Z

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_01:I

    const v0, -0x200d3

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_02:I

    const/16 v0, -0x7ca3

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_03:I

    const v0, -0xc4a5

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_04:I

    const v0, -0xb637

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_05:I

    const v0, -0x357a01

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_06:I

    const v0, -0x85c822

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_07:I

    const v0, -0xfe6bd2

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_08:I

    const v0, -0xc75701

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_09:I

    const/4 v0, 0x7

    new-array v0, v0, [[[[F

    new-array v1, v7, [[[F

    aput-object v1, v0, v7

    new-array v1, v7, [[[F

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v1, v1, [[[F

    new-array v2, v9, [[F

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_4

    aput-object v3, v2, v7

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_5

    aput-object v3, v2, v8

    aput-object v2, v1, v7

    new-array v2, v9, [[F

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_6

    aput-object v3, v2, v7

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_7

    aput-object v3, v2, v8

    aput-object v2, v1, v8

    new-array v2, v9, [[F

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_8

    aput-object v3, v2, v7

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_9

    aput-object v3, v2, v8

    aput-object v2, v1, v9

    new-array v2, v9, [[F

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_a

    aput-object v3, v2, v7

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_b

    aput-object v3, v2, v8

    aput-object v2, v1, v10

    new-array v2, v9, [[F

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_c

    aput-object v3, v2, v7

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_d

    aput-object v3, v2, v8

    aput-object v2, v1, v11

    const/4 v2, 0x5

    new-array v3, v9, [[F

    const/16 v4, 0xe

    new-array v4, v4, [F

    fill-array-data v4, :array_e

    aput-object v4, v3, v7

    const/16 v4, 0xe

    new-array v4, v4, [F

    fill-array-data v4, :array_f

    aput-object v4, v3, v8

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/16 v1, 0xa

    new-array v1, v1, [[[F

    new-array v2, v10, [[F

    const/16 v3, 0x11

    new-array v3, v3, [F

    fill-array-data v3, :array_10

    aput-object v3, v2, v7

    const/16 v3, 0x11

    new-array v3, v3, [F

    fill-array-data v3, :array_11

    aput-object v3, v2, v8

    const/16 v3, 0xf

    new-array v3, v3, [F

    fill-array-data v3, :array_12

    aput-object v3, v2, v9

    aput-object v2, v1, v7

    new-array v2, v10, [[F

    const/16 v3, 0xf

    new-array v3, v3, [F

    fill-array-data v3, :array_13

    aput-object v3, v2, v7

    const/16 v3, 0x11

    new-array v3, v3, [F

    fill-array-data v3, :array_14

    aput-object v3, v2, v8

    const/16 v3, 0x11

    new-array v3, v3, [F

    fill-array-data v3, :array_15

    aput-object v3, v2, v9

    aput-object v2, v1, v8

    new-array v2, v10, [[F

    const/16 v3, 0xf

    new-array v3, v3, [F

    fill-array-data v3, :array_16

    aput-object v3, v2, v7

    const/16 v3, 0x11

    new-array v3, v3, [F

    fill-array-data v3, :array_17

    aput-object v3, v2, v8

    const/16 v3, 0x11

    new-array v3, v3, [F

    fill-array-data v3, :array_18

    aput-object v3, v2, v9

    aput-object v2, v1, v9

    new-array v2, v10, [[F

    const/16 v3, 0x11

    new-array v3, v3, [F

    fill-array-data v3, :array_19

    aput-object v3, v2, v7

    const/16 v3, 0xf

    new-array v3, v3, [F

    fill-array-data v3, :array_1a

    aput-object v3, v2, v8

    const/16 v3, 0x11

    new-array v3, v3, [F

    fill-array-data v3, :array_1b

    aput-object v3, v2, v9

    aput-object v2, v1, v10

    new-array v2, v10, [[F

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_1c

    aput-object v3, v2, v7

    const/16 v3, 0x10

    new-array v3, v3, [F

    fill-array-data v3, :array_1d

    aput-object v3, v2, v8

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_1e

    aput-object v3, v2, v9

    aput-object v2, v1, v11

    const/4 v2, 0x5

    new-array v3, v10, [[F

    const/16 v4, 0xe

    new-array v4, v4, [F

    fill-array-data v4, :array_1f

    aput-object v4, v3, v7

    const/16 v4, 0x10

    new-array v4, v4, [F

    fill-array-data v4, :array_20

    aput-object v4, v3, v8

    const/16 v4, 0x10

    new-array v4, v4, [F

    fill-array-data v4, :array_21

    aput-object v4, v3, v9

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v10, [[F

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_22

    aput-object v4, v3, v7

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_23

    aput-object v4, v3, v8

    const/16 v4, 0xf

    new-array v4, v4, [F

    fill-array-data v4, :array_24

    aput-object v4, v3, v9

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v10, [[F

    const/16 v4, 0xf

    new-array v4, v4, [F

    fill-array-data v4, :array_25

    aput-object v4, v3, v7

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_26

    aput-object v4, v3, v8

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_27

    aput-object v4, v3, v9

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v10, [[F

    const/16 v4, 0xf

    new-array v4, v4, [F

    fill-array-data v4, :array_28

    aput-object v4, v3, v7

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_29

    aput-object v4, v3, v8

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_2a

    aput-object v4, v3, v9

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v10, [[F

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_2b

    aput-object v4, v3, v7

    const/16 v4, 0xf

    new-array v4, v4, [F

    fill-array-data v4, :array_2c

    aput-object v4, v3, v8

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_2d

    aput-object v4, v3, v9

    aput-object v3, v1, v2

    aput-object v1, v0, v10

    const/16 v1, 0xb

    new-array v1, v1, [[[F

    new-array v2, v11, [[F

    const/16 v3, 0x14

    new-array v3, v3, [F

    fill-array-data v3, :array_2e

    aput-object v3, v2, v7

    const/16 v3, 0x14

    new-array v3, v3, [F

    fill-array-data v3, :array_2f

    aput-object v3, v2, v8

    const/16 v3, 0x14

    new-array v3, v3, [F

    fill-array-data v3, :array_30

    aput-object v3, v2, v9

    const/16 v3, 0x14

    new-array v3, v3, [F

    fill-array-data v3, :array_31

    aput-object v3, v2, v10

    aput-object v2, v1, v7

    new-array v2, v11, [[F

    const/16 v3, 0x12

    new-array v3, v3, [F

    fill-array-data v3, :array_32

    aput-object v3, v2, v7

    const/16 v3, 0x12

    new-array v3, v3, [F

    fill-array-data v3, :array_33

    aput-object v3, v2, v8

    const/16 v3, 0x12

    new-array v3, v3, [F

    fill-array-data v3, :array_34

    aput-object v3, v2, v9

    const/16 v3, 0x12

    new-array v3, v3, [F

    fill-array-data v3, :array_35

    aput-object v3, v2, v10

    aput-object v2, v1, v8

    new-array v2, v11, [[F

    const/16 v3, 0x12

    new-array v3, v3, [F

    fill-array-data v3, :array_36

    aput-object v3, v2, v7

    const/16 v3, 0x12

    new-array v3, v3, [F

    fill-array-data v3, :array_37

    aput-object v3, v2, v8

    const/16 v3, 0x12

    new-array v3, v3, [F

    fill-array-data v3, :array_38

    aput-object v3, v2, v9

    const/16 v3, 0x12

    new-array v3, v3, [F

    fill-array-data v3, :array_39

    aput-object v3, v2, v10

    aput-object v2, v1, v9

    new-array v2, v11, [[F

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_3a

    aput-object v3, v2, v7

    const/16 v3, 0x10

    new-array v3, v3, [F

    fill-array-data v3, :array_3b

    aput-object v3, v2, v8

    const/16 v3, 0x10

    new-array v3, v3, [F

    fill-array-data v3, :array_3c

    aput-object v3, v2, v9

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_3d

    aput-object v3, v2, v10

    aput-object v2, v1, v10

    new-array v2, v11, [[F

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_3e

    aput-object v3, v2, v7

    const/16 v3, 0x10

    new-array v3, v3, [F

    fill-array-data v3, :array_3f

    aput-object v3, v2, v8

    const/16 v3, 0x10

    new-array v3, v3, [F

    fill-array-data v3, :array_40

    aput-object v3, v2, v9

    const/16 v3, 0xe

    new-array v3, v3, [F

    fill-array-data v3, :array_41

    aput-object v3, v2, v10

    aput-object v2, v1, v11

    const/4 v2, 0x5

    new-array v3, v11, [[F

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_42

    aput-object v4, v3, v7

    const/16 v4, 0x14

    new-array v4, v4, [F

    fill-array-data v4, :array_43

    aput-object v4, v3, v8

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_44

    aput-object v4, v3, v9

    const/16 v4, 0x10

    new-array v4, v4, [F

    fill-array-data v4, :array_45

    aput-object v4, v3, v10

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v11, [[F

    const/16 v4, 0x10

    new-array v4, v4, [F

    fill-array-data v4, :array_46

    aput-object v4, v3, v7

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_47

    aput-object v4, v3, v8

    const/16 v4, 0x14

    new-array v4, v4, [F

    fill-array-data v4, :array_48

    aput-object v4, v3, v9

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_49

    aput-object v4, v3, v10

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v11, [[F

    const/16 v4, 0x10

    new-array v4, v4, [F

    fill-array-data v4, :array_4a

    aput-object v4, v3, v7

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_4b

    aput-object v4, v3, v8

    const/16 v4, 0x14

    new-array v4, v4, [F

    fill-array-data v4, :array_4c

    aput-object v4, v3, v9

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_4d

    aput-object v4, v3, v10

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v11, [[F

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_4e

    aput-object v4, v3, v7

    const/16 v4, 0x10

    new-array v4, v4, [F

    fill-array-data v4, :array_4f

    aput-object v4, v3, v8

    const/16 v4, 0x14

    new-array v4, v4, [F

    fill-array-data v4, :array_50

    aput-object v4, v3, v9

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_51

    aput-object v4, v3, v10

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v11, [[F

    const/16 v4, 0xf

    new-array v4, v4, [F

    fill-array-data v4, :array_52

    aput-object v4, v3, v7

    const/16 v4, 0x14

    new-array v4, v4, [F

    fill-array-data v4, :array_53

    aput-object v4, v3, v8

    const/16 v4, 0x14

    new-array v4, v4, [F

    fill-array-data v4, :array_54

    aput-object v4, v3, v9

    const/16 v4, 0xf

    new-array v4, v4, [F

    fill-array-data v4, :array_55

    aput-object v4, v3, v10

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v11, [[F

    const/16 v4, 0xf

    new-array v4, v4, [F

    fill-array-data v4, :array_56

    aput-object v4, v3, v7

    const/16 v4, 0x14

    new-array v4, v4, [F

    fill-array-data v4, :array_57

    aput-object v4, v3, v8

    const/16 v4, 0xf

    new-array v4, v4, [F

    fill-array-data v4, :array_58

    aput-object v4, v3, v9

    const/16 v4, 0x14

    new-array v4, v4, [F

    fill-array-data v4, :array_59

    aput-object v4, v3, v10

    aput-object v3, v1, v2

    aput-object v1, v0, v11

    const/4 v1, 0x5

    const/16 v2, 0xb

    new-array v2, v2, [[[F

    const/4 v3, 0x5

    new-array v3, v3, [[F

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_5a

    aput-object v4, v3, v7

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_5b

    aput-object v4, v3, v8

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_5c

    aput-object v4, v3, v9

    const/16 v4, 0x18

    new-array v4, v4, [F

    fill-array-data v4, :array_5d

    aput-object v4, v3, v10

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_5e

    aput-object v4, v3, v11

    aput-object v3, v2, v7

    const/4 v3, 0x5

    new-array v3, v3, [[F

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_5f

    aput-object v4, v3, v7

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_60

    aput-object v4, v3, v8

    const/16 v4, 0x18

    new-array v4, v4, [F

    fill-array-data v4, :array_61

    aput-object v4, v3, v9

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_62

    aput-object v4, v3, v10

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_63

    aput-object v4, v3, v11

    aput-object v3, v2, v8

    const/4 v3, 0x5

    new-array v3, v3, [[F

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_64

    aput-object v4, v3, v7

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_65

    aput-object v4, v3, v8

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_66

    aput-object v4, v3, v9

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_67

    aput-object v4, v3, v10

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_68

    aput-object v4, v3, v11

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v3, v3, [[F

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_69

    aput-object v4, v3, v7

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_6a

    aput-object v4, v3, v8

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_6b

    aput-object v4, v3, v9

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_6c

    aput-object v4, v3, v10

    const/16 v4, 0x11

    new-array v4, v4, [F

    fill-array-data v4, :array_6d

    aput-object v4, v3, v11

    aput-object v3, v2, v10

    const/4 v3, 0x5

    new-array v3, v3, [[F

    const/16 v4, 0xe

    new-array v4, v4, [F

    fill-array-data v4, :array_6e

    aput-object v4, v3, v7

    const/16 v4, 0x10

    new-array v4, v4, [F

    fill-array-data v4, :array_6f

    aput-object v4, v3, v8

    const/16 v4, 0x10

    new-array v4, v4, [F

    fill-array-data v4, :array_70

    aput-object v4, v3, v9

    const/16 v4, 0x10

    new-array v4, v4, [F

    fill-array-data v4, :array_71

    aput-object v4, v3, v10

    const/16 v4, 0xe

    new-array v4, v4, [F

    fill-array-data v4, :array_72

    aput-object v4, v3, v11

    aput-object v3, v2, v11

    const/4 v3, 0x5

    const/4 v4, 0x5

    new-array v4, v4, [[F

    const/16 v5, 0xe

    new-array v5, v5, [F

    fill-array-data v5, :array_73

    aput-object v5, v4, v7

    const/16 v5, 0x10

    new-array v5, v5, [F

    fill-array-data v5, :array_74

    aput-object v5, v4, v8

    const/16 v5, 0x10

    new-array v5, v5, [F

    fill-array-data v5, :array_75

    aput-object v5, v4, v9

    const/16 v5, 0x10

    new-array v5, v5, [F

    fill-array-data v5, :array_76

    aput-object v5, v4, v10

    const/16 v5, 0xe

    new-array v5, v5, [F

    fill-array-data v5, :array_77

    aput-object v5, v4, v11

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x5

    new-array v4, v4, [[F

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_78

    aput-object v5, v4, v7

    const/16 v5, 0x15

    new-array v5, v5, [F

    fill-array-data v5, :array_79

    aput-object v5, v4, v8

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_7a

    aput-object v5, v4, v9

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_7b

    aput-object v5, v4, v10

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_7c

    aput-object v5, v4, v11

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x5

    new-array v4, v4, [[F

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_7d

    aput-object v5, v4, v7

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_7e

    aput-object v5, v4, v8

    const/16 v5, 0x15

    new-array v5, v5, [F

    fill-array-data v5, :array_7f

    aput-object v5, v4, v9

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_80

    aput-object v5, v4, v10

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_81

    aput-object v5, v4, v11

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x5

    new-array v4, v4, [[F

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_82

    aput-object v5, v4, v7

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_83

    aput-object v5, v4, v8

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_84

    aput-object v5, v4, v9

    const/16 v5, 0x15

    new-array v5, v5, [F

    fill-array-data v5, :array_85

    aput-object v5, v4, v10

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_86

    aput-object v5, v4, v11

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const/4 v4, 0x5

    new-array v4, v4, [[F

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_87

    aput-object v5, v4, v7

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_88

    aput-object v5, v4, v8

    const/16 v5, 0x15

    new-array v5, v5, [F

    fill-array-data v5, :array_89

    aput-object v5, v4, v9

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_8a

    aput-object v5, v4, v10

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_8b

    aput-object v5, v4, v11

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const/4 v4, 0x5

    new-array v4, v4, [[F

    const/16 v5, 0x10

    new-array v5, v5, [F

    fill-array-data v5, :array_8c

    aput-object v5, v4, v7

    const/16 v5, 0x16

    new-array v5, v5, [F

    fill-array-data v5, :array_8d

    aput-object v5, v4, v8

    const/16 v5, 0x18

    new-array v5, v5, [F

    fill-array-data v5, :array_8e

    aput-object v5, v4, v9

    const/16 v5, 0x16

    new-array v5, v5, [F

    fill-array-data v5, :array_8f

    aput-object v5, v4, v10

    const/16 v5, 0x10

    new-array v5, v5, [F

    fill-array-data v5, :array_90

    aput-object v5, v4, v11

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x9

    new-array v2, v2, [[[F

    const/4 v3, 0x6

    new-array v3, v3, [[F

    const/16 v4, 0x16

    new-array v4, v4, [F

    fill-array-data v4, :array_91

    aput-object v4, v3, v7

    const/16 v4, 0x16

    new-array v4, v4, [F

    fill-array-data v4, :array_92

    aput-object v4, v3, v8

    const/16 v4, 0x1a

    new-array v4, v4, [F

    fill-array-data v4, :array_93

    aput-object v4, v3, v9

    const/16 v4, 0x1a

    new-array v4, v4, [F

    fill-array-data v4, :array_94

    aput-object v4, v3, v10

    const/16 v4, 0x18

    new-array v4, v4, [F

    fill-array-data v4, :array_95

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const/16 v5, 0x16

    new-array v5, v5, [F

    fill-array-data v5, :array_96

    aput-object v5, v3, v4

    aput-object v3, v2, v7

    const/4 v3, 0x6

    new-array v3, v3, [[F

    const/16 v4, 0x16

    new-array v4, v4, [F

    fill-array-data v4, :array_97

    aput-object v4, v3, v7

    const/16 v4, 0x1a

    new-array v4, v4, [F

    fill-array-data v4, :array_98

    aput-object v4, v3, v8

    const/16 v4, 0x16

    new-array v4, v4, [F

    fill-array-data v4, :array_99

    aput-object v4, v3, v9

    const/16 v4, 0x16

    new-array v4, v4, [F

    fill-array-data v4, :array_9a

    aput-object v4, v3, v10

    const/16 v4, 0x1a

    new-array v4, v4, [F

    fill-array-data v4, :array_9b

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const/16 v5, 0x16

    new-array v5, v5, [F

    fill-array-data v5, :array_9c

    aput-object v5, v3, v4

    aput-object v3, v2, v8

    const/4 v3, 0x6

    new-array v3, v3, [[F

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_9d

    aput-object v4, v3, v7

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_9e

    aput-object v4, v3, v8

    const/16 v4, 0x16

    new-array v4, v4, [F

    fill-array-data v4, :array_9f

    aput-object v4, v3, v9

    const/16 v4, 0x16

    new-array v4, v4, [F

    fill-array-data v4, :array_a0

    aput-object v4, v3, v10

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_a1

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const/16 v5, 0x12

    new-array v5, v5, [F

    fill-array-data v5, :array_a2

    aput-object v5, v3, v4

    aput-object v3, v2, v9

    const/4 v3, 0x6

    new-array v3, v3, [[F

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_a3

    aput-object v4, v3, v7

    const/16 v4, 0x16

    new-array v4, v4, [F

    fill-array-data v4, :array_a4

    aput-object v4, v3, v8

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_a5

    aput-object v4, v3, v9

    const/16 v4, 0x12

    new-array v4, v4, [F

    fill-array-data v4, :array_a6

    aput-object v4, v3, v10

    const/16 v4, 0x16

    new-array v4, v4, [F

    fill-array-data v4, :array_a7

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const/16 v5, 0x12

    new-array v5, v5, [F

    fill-array-data v5, :array_a8

    aput-object v5, v3, v4

    aput-object v3, v2, v10

    const/4 v3, 0x6

    new-array v3, v3, [[F

    const/16 v4, 0x16

    new-array v4, v4, [F

    fill-array-data v4, :array_a9

    aput-object v4, v3, v7

    const/16 v4, 0x13

    new-array v4, v4, [F

    fill-array-data v4, :array_aa

    aput-object v4, v3, v8

    const/16 v4, 0x18

    new-array v4, v4, [F

    fill-array-data v4, :array_ab

    aput-object v4, v3, v9

    const/16 v4, 0x13

    new-array v4, v4, [F

    fill-array-data v4, :array_ac

    aput-object v4, v3, v10

    const/16 v4, 0x18

    new-array v4, v4, [F

    fill-array-data v4, :array_ad

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const/16 v5, 0x16

    new-array v5, v5, [F

    fill-array-data v5, :array_ae

    aput-object v5, v3, v4

    aput-object v3, v2, v11

    const/4 v3, 0x5

    const/4 v4, 0x6

    new-array v4, v4, [[F

    const/16 v5, 0x16

    new-array v5, v5, [F

    fill-array-data v5, :array_af

    aput-object v5, v4, v7

    const/16 v5, 0x18

    new-array v5, v5, [F

    fill-array-data v5, :array_b0

    aput-object v5, v4, v8

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_b1

    aput-object v5, v4, v9

    const/16 v5, 0x18

    new-array v5, v5, [F

    fill-array-data v5, :array_b2

    aput-object v5, v4, v10

    const/16 v5, 0x16

    new-array v5, v5, [F

    fill-array-data v5, :array_b3

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const/16 v6, 0x13

    new-array v6, v6, [F

    fill-array-data v6, :array_b4

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x6

    new-array v4, v4, [[F

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_b5

    aput-object v5, v4, v7

    const/16 v5, 0x15

    new-array v5, v5, [F

    fill-array-data v5, :array_b6

    aput-object v5, v4, v8

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_b7

    aput-object v5, v4, v9

    const/16 v5, 0x16

    new-array v5, v5, [F

    fill-array-data v5, :array_b8

    aput-object v5, v4, v10

    const/16 v5, 0x16

    new-array v5, v5, [F

    fill-array-data v5, :array_b9

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const/16 v6, 0xf

    new-array v6, v6, [F

    fill-array-data v6, :array_ba

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x6

    new-array v4, v4, [[F

    const/16 v5, 0xf

    new-array v5, v5, [F

    fill-array-data v5, :array_bb

    aput-object v5, v4, v7

    const/16 v5, 0x16

    new-array v5, v5, [F

    fill-array-data v5, :array_bc

    aput-object v5, v4, v8

    const/16 v5, 0x16

    new-array v5, v5, [F

    fill-array-data v5, :array_bd

    aput-object v5, v4, v9

    const/16 v5, 0x13

    new-array v5, v5, [F

    fill-array-data v5, :array_be

    aput-object v5, v4, v10

    const/16 v5, 0x15

    new-array v5, v5, [F

    fill-array-data v5, :array_bf

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const/16 v6, 0x13

    new-array v6, v6, [F

    fill-array-data v6, :array_c0

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x6

    new-array v4, v4, [[F

    const/16 v5, 0xc

    new-array v5, v5, [F

    fill-array-data v5, :array_c1

    aput-object v5, v4, v7

    const/16 v5, 0xc

    new-array v5, v5, [F

    fill-array-data v5, :array_c2

    aput-object v5, v4, v8

    const/16 v5, 0xc

    new-array v5, v5, [F

    fill-array-data v5, :array_c3

    aput-object v5, v4, v9

    const/16 v5, 0xc

    new-array v5, v5, [F

    fill-array-data v5, :array_c4

    aput-object v5, v4, v10

    const/16 v5, 0xc

    new-array v5, v5, [F

    fill-array-data v5, :array_c5

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const/16 v6, 0xc

    new-array v6, v6, [F

    fill-array-data v6, :array_c6

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->MAX_GRIDS:I

    return-void

    :array_0
    .array-data 4
        0x3ea2a2a3
        0x3f30b0b1
        0x3f53d3d4
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3ee4e4e5
        0x3f1d9d9e
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f088889
        0x3f088889
        0x3f088889
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f088889
    .end array-data

    :array_4
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f000000    # 0.5f
        0x3e2aaaab
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_f
    .array-data 4
        0x3f000000    # 0.5f
        0x3f555555
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_11
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_12
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_15
    .array-data 4
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_17
    .array-data 4
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
    .end array-data

    :array_18
    .array-data 4
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_1a
    .array-data 4
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1c
    .array-data 4
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
    .end array-data

    :array_1e
    .array-data 4
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0x3f000000    # 0.5f
        0x3e2aaaab
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_20
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_21
    .array-data 4
        0x3f000000    # 0.5f
        0x3f555555
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_22
    .array-data 4
        0x3e800000    # 0.25f
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_23
    .array-data 4
        0x3f400000    # 0.75f
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_24
    .array-data 4
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_25
    .array-data 4
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
    .end array-data

    :array_26
    .array-data 4
        0x3f555555
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_27
    .array-data 4
        0x3f555555
        0x3f400000    # 0.75f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_28
    .array-data 4
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_29
    .array-data 4
        0x3e800000    # 0.25f
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
    .end array-data

    :array_2a
    .array-data 4
        0x3f400000    # 0.75f
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2b
    .array-data 4
        0x3e2aaaab
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_2c
    .array-data 4
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2d
    .array-data 4
        0x3e2aaaab
        0x3f400000    # 0.75f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_2e
    .array-data 4
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data

    :array_2f
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data

    :array_30
    .array-data 4
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x0
    .end array-data

    :array_31
    .array-data 4
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_32
    .array-data 4
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_33
    .array-data 4
        0x3f400000    # 0.75f
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_34
    .array-data 4
        0x3e800000    # 0.25f
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x0
    .end array-data

    :array_35
    .array-data 4
        0x3f400000    # 0.75f
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_36
    .array-data 4
        0x3e2aaaab
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data

    :array_37
    .array-data 4
        0x3f2aaaab
        0x3e800000    # 0.25f
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data

    :array_38
    .array-data 4
        0x3eaaaaab
        0x3f400000    # 0.75f
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x0
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x0
    .end array-data

    :array_39
    .array-data 4
        0x3f555555
        0x3f400000    # 0.75f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3a
    .array-data 4
        0x3e000000    # 0.125f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_3b
    .array-data 4
        0x3ec00000    # 0.375f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
    .end array-data

    :array_3c
    .array-data 4
        0x3f200000    # 0.625f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x0
    .end array-data

    :array_3d
    .array-data 4
        0x3f600000    # 0.875f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3e
    .array-data 4
        0x3f000000    # 0.5f
        0x3e000000    # 0.125f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3f
    .array-data 4
        0x3f000000    # 0.5f
        0x3ec00000    # 0.375f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_40
    .array-data 4
        0x3f000000    # 0.5f
        0x3f200000    # 0.625f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_41
    .array-data 4
        0x3f000000    # 0.5f
        0x3f600000    # 0.875f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_42
    .array-data 4
        0x3e2aaaab
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_43
    .array-data 4
        0x3f000000    # 0.5f
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_44
    .array-data 4
        0x3f555555
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_45
    .array-data 4
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_46
    .array-data 4
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x0
    .end array-data

    :array_47
    .array-data 4
        0x3f555555
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_48
    .array-data 4
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3eaaaaab
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_49
    .array-data 4
        0x3f555555
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4a
    .array-data 4
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data

    :array_4b
    .array-data 4
        0x3e2aaaab
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
    .end array-data

    :array_4c
    .array-data 4
        0x3f000000    # 0.5f
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x0
    .end array-data

    :array_4d
    .array-data 4
        0x3f555555
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4e
    .array-data 4
        0x3e2aaaab
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_4f
    .array-data 4
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_50
    .array-data 4
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_51
    .array-data 4
        0x3e2aaaab
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_52
    .array-data 4
        0x3f000000    # 0.5f
        0x3e2aaaab
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_53
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_54
    .array-data 4
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_55
    .array-data 4
        0x3f000000    # 0.5f
        0x3f555555
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_56
    .array-data 4
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x0
    .end array-data

    :array_57
    .array-data 4
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_58
    .array-data 4
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_59
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
    .end array-data

    :array_5a
    .array-data 4
        0x3eaaaaab
        0x3e2aaaab
        0x3f2aaaab
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data

    :array_5b
    .array-data 4
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data

    :array_5c
    .array-data 4
        0x3e2aaaab
        0x3f2aaaab
        0x3eaaaaab
        0x3f2aaaab
        0x0
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_5d
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3eaaaaab
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data

    :array_5e
    .array-data 4
        0x3f2aaaab
        0x3f555555
        0x3f2aaaab
        0x3eaaaaab
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5f
    .array-data 4
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x3f2aaaab
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_60
    .array-data 4
        0x3f2aaaab
        0x3e2aaaab
        0x3f2aaaab
        0x3eaaaaab
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
    .end array-data

    :array_61
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3eaaaaab
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_62
    .array-data 4
        0x3eaaaaab
        0x3f555555
        0x3f2aaaab
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_63
    .array-data 4
        0x3f555555
        0x3f2aaaab
        0x3eaaaaab
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_64
    .array-data 4
        0x3e800000    # 0.25f
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_65
    .array-data 4
        0x3f400000    # 0.75f
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_66
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_67
    .array-data 4
        0x3e800000    # 0.25f
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_68
    .array-data 4
        0x3f400000    # 0.75f
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_69
    .array-data 4
        0x3e2aaaab
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_6a
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_6b
    .array-data 4
        0x3f555555
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data

    :array_6c
    .array-data 4
        0x3e2aaaab
        0x3f400000    # 0.75f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_6d
    .array-data 4
        0x3f555555
        0x3f400000    # 0.75f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6e
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_6f
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
    .end array-data

    :array_70
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x0
    .end array-data

    :array_71
    .array-data 4
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_72
    .array-data 4
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_73
    .array-data 4
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_74
    .array-data 4
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_75
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_76
    .array-data 4
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data

    :array_77
    .array-data 4
        0x3f000000    # 0.5f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_78
    .array-data 4
        0x3e2aaaab
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_79
    .array-data 4
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_7a
    .array-data 4
        0x3f555555
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_7b
    .array-data 4
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_7c
    .array-data 4
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7d
    .array-data 4
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_7e
    .array-data 4
        0x3f400000    # 0.75f
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_7f
    .array-data 4
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data

    :array_80
    .array-data 4
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_81
    .array-data 4
        0x3f400000    # 0.75f
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_82
    .array-data 4
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_83
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_84
    .array-data 4
        0x3e2aaaab
        0x3f400000    # 0.75f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x0
        0x0
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x0
    .end array-data

    :array_85
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_86
    .array-data 4
        0x3f555555
        0x3f400000    # 0.75f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_87
    .array-data 4
        0x3e800000    # 0.25f
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_88
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data

    :array_89
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_8a
    .array-data 4
        0x3e800000    # 0.25f
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_8b
    .array-data 4
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8c
    .array-data 4
        0x3f000000    # 0.5f
        0x3e2aaaab
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data

    :array_8d
    .array-data 4
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data

    :array_8e
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data

    :array_8f
    .array-data 4
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data

    :array_90
    .array-data 4
        0x3f000000    # 0.5f
        0x3f555555
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_91
    .array-data 4
        0x3e800000    # 0.25f
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data

    :array_92
    .array-data 4
        0x3f400000    # 0.75f
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data

    :array_93
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_94
    .array-data 4
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_95
    .array-data 4
        0x3e800000    # 0.25f
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_96
    .array-data 4
        0x3f400000    # 0.75f
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x40400000    # 3.0f
        0x0
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_97
    .array-data 4
        0x3e2aaaab
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_98
    .array-data 4
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x0
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_99
    .array-data 4
        0x3f555555
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x0
        0x0
        0x0
        0x0
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_9a
    .array-data 4
        0x3e2aaaab
        0x3f400000    # 0.75f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x0
        0x0
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_9b
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x0
        0x0
    .end array-data

    :array_9c
    .array-data 4
        0x3f555555
        0x3f400000    # 0.75f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9d
    .array-data 4
        0x3eaaaaab
        0x3e2aaaab
        0x3f2aaaab
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data

    :array_9e
    .array-data 4
        0x3f555555
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data

    :array_9f
    .array-data 4
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_a0
    .array-data 4
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_a1
    .array-data 4
        0x3eaaaaab
        0x3f555555
        0x3f2aaaab
        0x3eaaaaab
        0x0
        0x0
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
        0x0
        0x0
    .end array-data

    :array_a2
    .array-data 4
        0x3f555555
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a3
    .array-data 4
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x3f2aaaab
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_a4
    .array-data 4
        0x3f000000    # 0.5f
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x0
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data

    :array_a5
    .array-data 4
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x3f2aaaab
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_a6
    .array-data 4
        0x3e2aaaab
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_a7
    .array-data 4
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3eaaaaab
        0x3f2aaaab
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x0
        0x0
    .end array-data

    :array_a8
    .array-data 4
        0x3f555555
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a9
    .array-data 4
        0x3eaaaaab
        0x3eaaaaab
        0x3f2aaaab
        0x3f2aaaab
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_aa
    .array-data 4
        0x3f555555
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x0
        0x40800000    # 4.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_ab
    .array-data 4
        0x3f555555
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3eaaaaab
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x0
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_ac
    .array-data 4
        0x3e2aaaab
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_ad
    .array-data 4
        0x3f000000    # 0.5f
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x0
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x0
        0x0
    .end array-data

    :array_ae
    .array-data 4
        0x3f555555
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x0
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_af
    .array-data 4
        0x3e2aaaab
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x40400000    # 3.0f
        0x0
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_b0
    .array-data 4
        0x3f000000    # 0.5f
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x0
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_b1
    .array-data 4
        0x3f555555
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_b2
    .array-data 4
        0x3e2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_b3
    .array-data 4
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x0
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_b4
    .array-data 4
        0x3e2aaaab
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x0
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_b5
    .array-data 4
        0x3e2aaaab
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_b6
    .array-data 4
        0x3f000000    # 0.5f
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_b7
    .array-data 4
        0x3f555555
        0x3e2aaaab
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_b8
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_b9
    .array-data 4
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_ba
    .array-data 4
        0x3f000000    # 0.5f
        0x3f555555
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_bb
    .array-data 4
        0x3f000000    # 0.5f
        0x3e2aaaab
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_bc
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_bd
    .array-data 4
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_be
    .array-data 4
        0x3e2aaaab
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x0
        0x0
    .end array-data

    :array_bf
    .array-data 4
        0x3f000000    # 0.5f
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
        0x0
        0x0
    .end array-data

    :array_c0
    .array-data 4
        0x3f555555
        0x3f555555
        0x3eaaaaab
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c1
    .array-data 4
        0x3f000000    # 0.5f
        0x3daaaaab
        0x3f800000    # 1.0f
        0x3e2aaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c2
    .array-data 4
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e2aaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c3
    .array-data 4
        0x3f000000    # 0.5f
        0x3ed55555
        0x3f800000    # 1.0f
        0x3e2aaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f155555
        0x3f800000    # 1.0f
        0x3e2aaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c5
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3e2aaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c6
    .array-data 4
        0x3f000000    # 0.5f
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3e2aaaab
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBGColor(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_01:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_02:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_03:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_04:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_05:I

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_06:I

    goto :goto_0

    :pswitch_6
    sget v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_07:I

    goto :goto_0

    :pswitch_7
    sget v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_08:I

    goto :goto_0

    :pswitch_8
    sget v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_09:I

    goto :goto_0

    :pswitch_9
    const v0, -0xcc9803

    goto :goto_0

    :pswitch_a
    const v0, -0x595a5b

    goto :goto_0

    :pswitch_b
    const v0, -0xc9c9ca

    goto :goto_0

    :pswitch_c
    const/high16 v0, -0x1000000

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e016c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getCollageBG(Landroid/content/res/Resources;II[I)Landroid/graphics/Bitmap;
    .locals 7

    const/16 v2, 0xa

    const/4 v1, 0x5

    const v6, 0x7f0e0120

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {p1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getThumbBackgroundResource(II)I

    move-result v3

    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    aput v4, p3, v5

    aput v4, p3, v4

    :goto_0
    return-object v0

    :pswitch_1
    aput v1, p3, v5

    if-ne p2, v6, :cond_0

    :goto_1
    aput v1, p3, v4

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    goto :goto_1

    :pswitch_2
    aput v1, p3, v5

    if-ne p2, v6, :cond_1

    const/4 v1, 0x2

    :goto_2
    aput v1, p3, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_2

    :pswitch_3
    aput v2, p3, v5

    if-ne p2, v6, :cond_2

    move v1, v2

    :goto_3
    aput v1, p3, v4

    goto :goto_0

    :cond_2
    const/16 v1, 0x12

    goto :goto_3

    :pswitch_4
    const/16 v1, 0xf

    aput v1, p3, v5

    if-ne p2, v6, :cond_3

    const/16 v1, 0xf

    :goto_4
    aput v1, p3, v4

    goto :goto_0

    :cond_3
    const/16 v1, 0x1b

    goto :goto_4

    :pswitch_5
    const/16 v1, 0x14

    aput v1, p3, v5

    if-ne p2, v6, :cond_4

    const/16 v1, 0x14

    :goto_5
    aput v1, p3, v4

    goto :goto_0

    :cond_4
    const/16 v1, 0x24

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e012c
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCollageData(I)[[F
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x6

    const/4 v3, 0x3

    const/4 v2, 0x5

    const/4 v1, 0x4

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    check-cast v0, [[F

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v5

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v5

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v5

    aget-object v0, v0, v5

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v5

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_5
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v3

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_7
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v3

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v3

    aget-object v0, v0, v5

    goto :goto_0

    :sswitch_9
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    goto :goto_0

    :sswitch_a
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v3

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_b
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    goto :goto_0

    :sswitch_c
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    goto :goto_0

    :sswitch_d
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v3

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_e
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v3

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_f
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v3

    const/16 v1, 0x9

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_10
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_11
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_12
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v1

    aget-object v0, v0, v5

    goto/16 :goto_0

    :sswitch_13
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    goto/16 :goto_0

    :sswitch_14
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_15
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    goto/16 :goto_0

    :sswitch_16
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    goto/16 :goto_0

    :sswitch_17
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v1

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_18
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v1

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_19
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v1

    const/16 v1, 0x9

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_1a
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v1

    const/16 v1, 0xa

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_1b
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v2

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_1c
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v2

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_1d
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v2

    aget-object v0, v0, v5

    goto/16 :goto_0

    :sswitch_1e
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    goto/16 :goto_0

    :sswitch_1f
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v2

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_20
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    goto/16 :goto_0

    :sswitch_21
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    goto/16 :goto_0

    :sswitch_22
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v2

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_23
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v2

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_24
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v2

    const/16 v1, 0x9

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_25
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v2

    const/16 v1, 0xa

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_26
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v4

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_27
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_28
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v4

    aget-object v0, v0, v5

    goto/16 :goto_0

    :sswitch_29
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    goto/16 :goto_0

    :sswitch_2a
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v4

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_2b
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    goto/16 :goto_0

    :sswitch_2c
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v4

    aget-object v0, v0, v4

    goto/16 :goto_0

    :sswitch_2d
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v4

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_2e
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->collageData:[[[[F

    aget-object v0, v0, v4

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x45 -> :sswitch_2e
        0x7f0e027c -> :sswitch_0
        0x7f0e027e -> :sswitch_1
        0x7f0e0280 -> :sswitch_2
        0x7f0e0282 -> :sswitch_3
        0x7f0e0284 -> :sswitch_4
        0x7f0e0286 -> :sswitch_5
        0x7f0e0289 -> :sswitch_6
        0x7f0e028b -> :sswitch_7
        0x7f0e028d -> :sswitch_8
        0x7f0e028f -> :sswitch_9
        0x7f0e0291 -> :sswitch_a
        0x7f0e0293 -> :sswitch_b
        0x7f0e0295 -> :sswitch_c
        0x7f0e0297 -> :sswitch_d
        0x7f0e0299 -> :sswitch_e
        0x7f0e029c -> :sswitch_f
        0x7f0e02a0 -> :sswitch_10
        0x7f0e02a3 -> :sswitch_11
        0x7f0e02a6 -> :sswitch_12
        0x7f0e02a9 -> :sswitch_13
        0x7f0e02ac -> :sswitch_14
        0x7f0e02af -> :sswitch_15
        0x7f0e02b2 -> :sswitch_16
        0x7f0e02b5 -> :sswitch_17
        0x7f0e02b8 -> :sswitch_18
        0x7f0e02bb -> :sswitch_19
        0x7f0e02be -> :sswitch_1a
        0x7f0e02c2 -> :sswitch_1b
        0x7f0e02c5 -> :sswitch_1c
        0x7f0e02c8 -> :sswitch_1d
        0x7f0e02cb -> :sswitch_1e
        0x7f0e02ce -> :sswitch_1f
        0x7f0e02d1 -> :sswitch_20
        0x7f0e02d4 -> :sswitch_21
        0x7f0e02d7 -> :sswitch_22
        0x7f0e02da -> :sswitch_23
        0x7f0e02dd -> :sswitch_24
        0x7f0e02e0 -> :sswitch_25
        0x7f0e02e4 -> :sswitch_26
        0x7f0e02e7 -> :sswitch_27
        0x7f0e02ea -> :sswitch_28
        0x7f0e02ed -> :sswitch_29
        0x7f0e02f0 -> :sswitch_2a
        0x7f0e02f3 -> :sswitch_2b
        0x7f0e02f6 -> :sswitch_2c
        0x7f0e02f9 -> :sswitch_2d
    .end sparse-switch
.end method

.method public static getCurrentLayout(IILandroid/content/Context;)I
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const v0, 0x7f0e027c

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0e027c

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0e0289

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0e02a0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0e02c2

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0e02e4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getDefaultLayout(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0e027c

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0e0289

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0e02a0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0e02c2

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0e02e4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getExtraLayout(II)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getDefaultLayout(I)I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x7f0e027c

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0e027e

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0e0289

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0e028b

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0e02a0

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0e02c2

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0e02d4

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0e02d7

    goto :goto_0

    :sswitch_8
    const v0, 0x7f0e02e4

    goto :goto_0

    :sswitch_9
    const v0, 0x7f0e02ea

    goto :goto_0

    :sswitch_a
    const v0, 0x7f0e02ed

    goto :goto_0

    :sswitch_b
    const v0, 0x7f0e02f0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x1f -> :sswitch_2
        0x20 -> :sswitch_3
        0x29 -> :sswitch_4
        0x33 -> :sswitch_5
        0x34 -> :sswitch_6
        0x35 -> :sswitch_7
        0x3d -> :sswitch_8
        0x3e -> :sswitch_9
        0x3f -> :sswitch_a
        0x40 -> :sswitch_b
    .end sparse-switch
.end method

.method public static getRandomLayout(Landroid/content/Context;I)I
    .locals 7

    const v6, 0x7f0e027b

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v3

    check-cast v1, Landroid/view/ViewGroup;

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    return v3

    :pswitch_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v3

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :pswitch_1
    check-cast p0, Landroid/app/Activity;

    const v3, 0x7f0e0288

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v3

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :pswitch_2
    check-cast p0, Landroid/app/Activity;

    const v3, 0x7f0e029f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v3

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :pswitch_3
    check-cast p0, Landroid/app/Activity;

    const v3, 0x7f0e02c1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v3

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :pswitch_4
    check-cast p0, Landroid/app/Activity;

    const v3, 0x7f0e02e3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v3

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getThumbBackgroundResource(II)I
    .locals 5

    const v2, 0x7f02015c

    const v1, 0x7f020159

    const v0, 0x7f020154

    const v4, 0x7f0e0123

    const v3, 0x7f0e0120

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f020171

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020173

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020175

    goto :goto_0

    :pswitch_4
    const v0, 0x7f020177

    goto :goto_0

    :pswitch_5
    const v0, 0x7f020179

    goto :goto_0

    :pswitch_6
    const v0, 0x7f02017b

    goto :goto_0

    :pswitch_7
    const v0, 0x7f02017d

    goto :goto_0

    :pswitch_8
    const v0, 0x7f02017f

    goto :goto_0

    :pswitch_9
    const v0, 0x7f020169

    goto :goto_0

    :pswitch_a
    const v0, 0x7f02016a

    goto :goto_0

    :pswitch_b
    const v0, 0x7f02016b

    goto :goto_0

    :pswitch_c
    const v0, 0x7f02016c

    goto :goto_0

    :pswitch_d
    const v0, 0x7f020191

    goto :goto_0

    :pswitch_e
    const v0, 0x7f020193

    goto :goto_0

    :pswitch_f
    const v0, 0x7f020195

    goto :goto_0

    :pswitch_10
    const v0, 0x7f020197

    goto :goto_0

    :pswitch_11
    const v0, 0x7f020199

    goto :goto_0

    :pswitch_12
    const v0, 0x7f02019b

    goto :goto_0

    :pswitch_13
    const v0, 0x7f02019d

    goto :goto_0

    :pswitch_14
    const v0, 0x7f020152

    goto :goto_0

    :pswitch_15
    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_0

    const v0, 0x7f020155

    goto :goto_0

    :pswitch_16
    const v0, 0x7f020157

    goto :goto_0

    :pswitch_17
    if-ne p1, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-ne p1, v4, :cond_2

    const v0, 0x7f02015a

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_18
    if-ne p1, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    if-ne p1, v4, :cond_4

    const v0, 0x7f02015d

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :pswitch_19
    const v0, 0x7f02015f

    goto :goto_0

    :pswitch_1a
    const v0, 0x7f020161

    goto :goto_0

    :pswitch_1b
    if-ne p1, v3, :cond_5

    const v0, 0x7f020163

    goto/16 :goto_0

    :cond_5
    if-ne p1, v4, :cond_6

    const v0, 0x7f020164

    goto/16 :goto_0

    :cond_6
    const v0, 0x7f020163

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e012c
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
    .end packed-switch
.end method

.method public static getTiledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/2addr v6, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v7, p2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v7, v2

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v0, p0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "PEDIT_CollageConstants"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tiled bmp time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static setBGColorForDream()V
    .locals 1

    const v0, -0x10102

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_01:I

    const/high16 v0, -0x10000

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_02:I

    const/16 v0, -0x6a00

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_03:I

    const/16 v0, -0x3400

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_04:I

    const v0, -0xc647e0

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_05:I

    const v0, -0xca7401

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_06:I

    const v0, -0xd5ff91

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_07:I

    const v0, -0x47ff21

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_08:I

    const/high16 v0, -0x1000000

    sput v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_09:I

    return-void
.end method
