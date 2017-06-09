.class public Lcom/samsung/javaomp/compiler/JavaParserTokenManager;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/samsung/javaomp/compiler/JavaParserConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjbitVec10:[J

.field static final jjbitVec11:[J

.field static final jjbitVec12:[J

.field static final jjbitVec13:[J

.field static final jjbitVec14:[J

.field static final jjbitVec15:[J

.field static final jjbitVec16:[J

.field static final jjbitVec17:[J

.field static final jjbitVec18:[J

.field static final jjbitVec19:[J

.field static final jjbitVec2:[J

.field static final jjbitVec20:[J

.field static final jjbitVec21:[J

.field static final jjbitVec22:[J

.field static final jjbitVec23:[J

.field static final jjbitVec24:[J

.field static final jjbitVec25:[J

.field static final jjbitVec26:[J

.field static final jjbitVec27:[J

.field static final jjbitVec28:[J

.field static final jjbitVec29:[J

.field static final jjbitVec3:[J

.field static final jjbitVec30:[J

.field static final jjbitVec31:[J

.field static final jjbitVec32:[J

.field static final jjbitVec33:[J

.field static final jjbitVec34:[J

.field static final jjbitVec35:[J

.field static final jjbitVec36:[J

.field static final jjbitVec37:[J

.field static final jjbitVec38:[J

.field static final jjbitVec39:[J

.field static final jjbitVec4:[J

.field static final jjbitVec40:[J

.field static final jjbitVec41:[J

.field static final jjbitVec42:[J

.field static final jjbitVec43:[J

.field static final jjbitVec44:[J

.field static final jjbitVec45:[J

.field static final jjbitVec46:[J

.field static final jjbitVec47:[J

.field static final jjbitVec48:[J

.field static final jjbitVec49:[J

.field static final jjbitVec5:[J

.field static final jjbitVec50:[J

.field static final jjbitVec51:[J

.field static final jjbitVec52:[J

.field static final jjbitVec53:[J

.field static final jjbitVec54:[J

.field static final jjbitVec55:[J

.field static final jjbitVec56:[J

.field static final jjbitVec57:[J

.field static final jjbitVec58:[J

.field static final jjbitVec59:[J

.field static final jjbitVec6:[J

.field static final jjbitVec60:[J

.field static final jjbitVec61:[J

.field static final jjbitVec7:[J

.field static final jjbitVec8:[J

.field static final jjbitVec9:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field private image:Ljava/lang/StringBuilder;

.field protected input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

.field private final jjimage:Ljava/lang/StringBuilder;

.field private jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field private lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, -0x2

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v8

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v6

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec0:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v8

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v6

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec2:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0xfffffffdffffeL

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x2001

    aput-wide v2, v0, v8

    const-wide v2, -0xff080000001L

    aput-wide v2, v0, v6

    const-wide v2, 0x12000000007fffffL    # 5.532904673123902E-222

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec3:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v8

    const-wide v2, 0x420043c00000000L    # 8.217560002996165E-289

    aput-wide v2, v0, v6

    const-wide v2, -0x80000000800001L

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec4:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0xffffcffffffffL

    aput-wide v2, v0, v5

    const-wide/32 v2, -0x10000

    aput-wide v2, v0, v8

    const-wide v2, -0x600c00000000001L    # -4.43165573024089E279

    aput-wide v2, v0, v6

    const-wide v2, 0x401f00030003L

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec5:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v5

    const-wide/high16 v2, 0x400000000000000L

    aput-wide v2, v0, v8

    const-wide v2, -0x4000028c0L

    aput-wide v2, v0, v6

    const-wide v2, 0xffffffcff7fffL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec6:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v8

    const-wide/16 v2, -0xffd

    aput-wide v2, v0, v6

    const-wide v2, 0x33fffffffff199fL    # 5.010420899989625E-293

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec7:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/high16 v2, -0x2000000000000L

    aput-wide v2, v0, v5

    const-wide v2, -0x1fd800001L

    aput-wide v2, v0, v8

    const-wide/16 v2, 0xff

    aput-wide v2, v0, v6

    const-wide v2, 0x707ffffff0000L

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec8:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x7fffffe00000000L

    aput-wide v2, v0, v5

    const-wide v2, -0x1fffffffff801L

    aput-wide v2, v0, v8

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v6

    const-wide v2, 0x1c000060002fffffL    # 8.087089556935197E-174

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec9:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x1ffffffd0000L

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v8

    const-wide v2, 0x3fffffffffL

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec10:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x23ffffffffffffe0L

    aput-wide v2, v0, v5

    const-wide v2, 0x3ff010000L

    aput-wide v2, v0, v8

    const-wide v2, 0x3c5fdfffff99fe0L

    aput-wide v2, v0, v6

    const-wide v2, 0xf0003b0000000L

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec11:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x36dfdfffff987e0L

    aput-wide v2, v0, v5

    const-wide v2, 0x1c00005e000000L

    aput-wide v2, v0, v8

    const-wide v2, 0x23edfdfffffbafe0L

    aput-wide v2, v0, v6

    const-wide v2, 0x100010000L

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec12:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x23cdfdfffff99fe0L

    aput-wide v2, v0, v5

    const-wide v2, 0x3b0000000L

    aput-wide v2, v0, v8

    const-wide v2, 0x3bfc718d63dc7e0L    # 1.2737581290007763E-290

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec13:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x3effdfffffddfe0L

    aput-wide v2, v0, v5

    const-wide v2, 0x300000000L

    aput-wide v2, v0, v8

    const-wide v2, 0x3effdfffffddfe0L

    aput-wide v2, v0, v6

    const-wide v2, 0x340000000L

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec14:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x3fffdfffffddfe0L

    aput-wide v2, v0, v5

    const-wide v2, 0x300000000L

    aput-wide v2, v0, v8

    const-wide v2, 0x2ffbfffffc7fffe0L    # 1.5113294858812394E-77

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x7f

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec15:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0x7ff2000000000002L    # -1.9469396261938E-308

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x7f

    aput-wide v2, v0, v8

    const-wide v2, 0x200decaefef02596L

    aput-wide v2, v0, v6

    const-wide/32 v2, 0x3000005f

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec16:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, 0x1

    aput-wide v2, v0, v5

    const-wide v2, 0x7fffffffeffL

    aput-wide v2, v0, v8

    const-wide/16 v2, 0xf00

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec17:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x6fbffffffffL

    aput-wide v2, v0, v5

    const-wide/32 v2, 0x3f0000

    aput-wide v2, v0, v8

    const-wide v2, -0x100000000L

    aput-wide v2, v0, v6

    const-wide v2, 0x7fffffffff003fL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec18:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v5

    const-wide/32 v2, -0x7c000001

    aput-wide v2, v0, v8

    const-wide v2, -0xf800000001L

    aput-wide v2, v0, v6

    const-wide v2, 0x3ffffffffffffffL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec19:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, -0x81

    aput-wide v2, v0, v5

    const-wide v2, -0xc280c281L

    aput-wide v2, v0, v8

    const-wide v2, 0x7f3d7fffffff3d7fL    # 8.092033001422166E304

    aput-wide v2, v0, v6

    const-wide v2, -0x8000008080c3L

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec20:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0x80c28001L

    aput-wide v2, v0, v5

    const-wide/32 v2, 0x7ffff7f

    aput-wide v2, v0, v8

    const-wide v2, -0x100000000L

    aput-wide v2, v0, v6

    const-wide v2, 0x1fffffffffffffL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec21:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v5

    const-wide v2, 0x7f9fffffffffffL

    aput-wide v2, v0, v8

    const-wide v2, -0xf8000002L

    aput-wide v2, v0, v6

    const-wide v2, 0x7ffffffffffL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec22:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v8

    const-wide v2, 0xfffffffffffffL

    aput-wide v2, v0, v6

    const-wide/32 v2, 0x8000000

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec23:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0x100000000L

    aput-wide v2, v0, v5

    const-wide v2, 0xffffffffffffffL

    aput-wide v2, v0, v8

    const-wide v2, 0x1ffffffffffL

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec24:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v8

    const-wide v2, -0xf0000001L

    aput-wide v2, v0, v6

    const-wide v2, 0x3ffffffffffffffL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec25:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0xc0c00001L

    aput-wide v2, v0, v5

    const-wide v2, 0x3fffffffaaff3f3fL    # 1.9999996833393678

    aput-wide v2, v0, v8

    const-wide v2, 0x5fdfffffffffffffL    # 6.703903964971298E153

    aput-wide v2, v0, v6

    const-wide v2, 0x1fdc1fff0fcf1fdcL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec26:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v5

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    aput-wide v2, v0, v8

    const-wide v2, 0xffff00000000L

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec27:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x3fbbd503e2ffc84L

    aput-wide v2, v0, v5

    const-wide v2, -0x100000000L

    aput-wide v2, v0, v8

    const-wide/16 v2, 0xf

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec28:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x73e03fe000000e0L

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x2

    aput-wide v2, v0, v8

    const-wide v2, -0x19fe00001L

    aput-wide v2, v0, v6

    const-wide v2, 0x7fffffffffffffffL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec29:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0x1e00000000020L

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v8

    const-wide v2, 0xffffff00007fffL

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec30:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v8

    const-wide v2, 0x3fffffffffffffL

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec31:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v8

    const-wide v2, 0x3fffffffffL

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec32:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v8

    const-wide/16 v2, 0x1fff

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec33:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v8

    const-wide v2, 0xfffffffffL

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec34:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x3fffffffffffL

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v8

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec35:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x5f7ffdffa0f8007fL    # 1.0472290754707465E152

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x25

    aput-wide v2, v0, v8

    const-wide v2, 0x3ffffffffffffL    # 5.562684646268E-309

    aput-wide v2, v0, v6

    const-wide/32 v2, -0x80000

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec36:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    aput-wide v2, v0, v5

    const-wide/32 v2, -0x10000

    aput-wide v2, v0, v8

    const-wide/32 v2, -0x30001

    aput-wide v2, v0, v6

    const-wide v2, 0xfff0000000000ffL    # 1.247972574109481E-231

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec37:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/high16 v2, 0x18000000000000L

    aput-wide v2, v0, v5

    const-wide v2, -0x28fdffffff2000L

    aput-wide v2, v0, v8

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v6

    const-wide v2, 0x1fffffffffffffffL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec38:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0x78000001fffffff0L    # -3.785763385344934E-270

    aput-wide v2, v0, v5

    const-wide v2, -0x1ff8000002L

    aput-wide v2, v0, v8

    const-wide v2, 0x7fffffffffffffffL

    aput-wide v2, v0, v6

    const-wide v2, 0x631cfcfcfcL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec39:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v8

    const-wide v2, 0x420043cffffffffL    # 8.21756783177882E-289

    aput-wide v2, v0, v6

    const-wide v2, -0x80000000800001L

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec40:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v5

    const-wide v2, 0x400000700007fffL

    aput-wide v2, v0, v8

    const-wide v2, -0x4000028c0L

    aput-wide v2, v0, v6

    const-wide v2, 0xffffffcff7fffL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec41:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v8

    const-wide/16 v2, -0xf85

    aput-wide v2, v0, v6

    const-wide v2, 0x33fffffffff199fL    # 5.010420899989625E-293

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec42:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/high16 v2, -0x2000000000000L

    aput-wide v2, v0, v5

    const-wide v2, -0x1fd800001L

    aput-wide v2, v0, v8

    const-wide v2, -0x440000040001ff01L    # -1.0842001045182265E-19

    aput-wide v2, v0, v6

    const-wide v2, 0x707ffffff0016L

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec43:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x7fffffe00000000L

    aput-wide v2, v0, v5

    const-wide v2, -0xfc00ffc00001L

    aput-wide v2, v0, v8

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v6

    const-wide v2, 0x1fff3dff9fefffffL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec44:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0xe00000008000L

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x7ff

    aput-wide v2, v0, v8

    const-wide v2, 0x1ffffffffffffL

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec45:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0xc00000000000012L

    aput-wide v2, v0, v5

    const-wide v2, 0xffcfff1f3fffL

    aput-wide v2, v0, v8

    const-wide v2, -0x2c3a020000066012L    # -3.669924014716509E95

    aput-wide v2, v0, v6

    const-wide v2, 0xfffcfb080399fL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec46:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0x2c9202000006781cL    # -7.820181112755359E93

    aput-wide v2, v0, v5

    const-wide v2, 0x1fffc05e003987L

    aput-wide v2, v0, v8

    const-wide v2, -0xc12020000045012L

    aput-wide v2, v0, v6

    const-wide v2, 0xffc100013bbfL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec47:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0xc32020000066012L

    aput-wide v2, v0, v5

    const-wide v2, 0xffc3b0c0398fL

    aput-wide v2, v0, v8

    const-wide v2, -0x3c4038e729c23814L    # -2.28982624397976678E18

    aput-wide v2, v0, v6

    const-wide v2, 0xff8000803dc7L

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec48:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0x3c10020000022012L    # -1.8442240473796932E19

    aput-wide v2, v0, v5

    const-wide v2, 0xffc300603ddfL

    aput-wide v2, v0, v8

    const-wide v2, -0x3c10020000022014L    # -1.8442240473796927E19

    aput-wide v2, v0, v6

    const-wide v2, 0xffc340603ddfL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec49:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0x3c00020000022014L    # -3.6884480947593855E19

    aput-wide v2, v0, v5

    const-wide v2, 0xffc300803dcfL

    aput-wide v2, v0, v8

    const-wide v2, 0x2ffbfffffc7fffecL    # 1.5113294858812417E-77

    aput-wide v2, v0, v6

    const-wide v2, 0xc0000ff5f847fL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec50:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0x7800000000000002L

    aput-wide v2, v0, v5

    const-wide/32 v2, 0x3ff7fff    # 3.3139994E-316

    aput-wide v2, v0, v8

    const-wide v2, 0x3bffecaefef02596L

    aput-wide v2, v0, v6

    const-wide/32 v2, 0x33ff3f5f

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec51:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0x3d5ffc00fcffffffL    # -8.804674666496002E12

    aput-wide v2, v0, v5

    const-wide v2, -0x1f80000000101L

    aput-wide v2, v0, v8

    const-wide v2, 0x1ffffffffeff0fdfL

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x40

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec52:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x3c7f6fbffffffffL

    aput-wide v2, v0, v5

    const-wide/32 v2, 0x3ff03ff

    aput-wide v2, v0, v8

    const-wide v2, -0x100000000L

    aput-wide v2, v0, v6

    const-wide v2, 0x7fffffffff003fL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec53:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0x80c28001L

    aput-wide v2, v0, v5

    const-wide v2, 0x3fe0007ffff7fL

    aput-wide v2, v0, v8

    const-wide v2, -0x100000000L

    aput-wide v2, v0, v6

    const-wide v2, 0x1fffffffffffffL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec54:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v8

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v6

    const-wide v2, 0x3ff080fffffL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec55:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0xfc008800L

    aput-wide v2, v0, v5

    const-wide v2, 0xffffffffffffffL

    aput-wide v2, v0, v8

    const-wide v2, 0x3ffffffffffL

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec56:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0x7fff83ffffff1000L    # -6.7360634418757E-310

    aput-wide v2, v0, v5

    const-wide v2, -0x7fff03ffffffffffL    # -1.36894192466752E-309

    aput-wide v2, v0, v8

    const-wide v2, 0xffff00000000L

    aput-wide v2, v0, v6

    const-wide v2, 0x21fff0000L

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec57:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x73efffe000000e0L

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x2

    aput-wide v2, v0, v8

    const-wide v2, -0x199e00001L

    aput-wide v2, v0, v6

    const-wide v2, 0x7fffffffffffffffL

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec58:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x5f7ffdffe0f8007fL    # 1.0472292003406885E152

    aput-wide v2, v0, v5

    const-wide/16 v2, -0x25

    aput-wide v2, v0, v8

    const-wide v2, 0x3ffffffffffffL    # 5.562684646268E-309

    aput-wide v2, v0, v6

    const-wide/32 v2, -0x80000

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec59:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, 0x18000f00000000L

    aput-wide v2, v0, v5

    const-wide v2, -0x28fdffffff2000L

    aput-wide v2, v0, v8

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v6

    const-wide v2, -0x6000000000000001L

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec60:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const-wide v2, -0x78000001fc00fff0L    # -3.785763413523551E-270

    aput-wide v2, v0, v5

    const-wide v2, -0x1ff8000002L

    aput-wide v2, v0, v8

    const-wide v2, 0x7fffffffffffffffL

    aput-wide v2, v0, v6

    const-wide v2, 0xe0000631cfcfcfcL    # 2.9996771357166486E-241

    aput-wide v2, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec61:[J

    const/16 v0, 0x40

    new-array v0, v0, [I

    const/16 v1, 0x3c

    aput v1, v0, v5

    const/16 v1, 0x3d

    aput v1, v0, v8

    const/16 v1, 0x3f

    aput v1, v0, v6

    const/16 v1, 0x1e

    aput v1, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x22

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x41

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0x14

    aput v6, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x44

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x4b

    aput v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x45

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x46

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x4c

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x4d

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x4e

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x47

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x48

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x49

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x4a

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x4f

    aput v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x50

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnextStates:[I

    const/16 v0, 0xbd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v5

    const/4 v1, 0x0

    aput-object v1, v0, v8

    const-string/jumbo v1, "//"

    aput-object v1, v0, v6

    const/4 v1, 0x0

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "parallel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "sections"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "section"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "barrier"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "master"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "for"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "cancel"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "critical"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "single"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "task"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "taskwait"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "taskyield"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "nowait"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "private"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "reduction"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "shared"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "schedule"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "firstprivate"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "lastprivate"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "copyprivate"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "default"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "ordered"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "final"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "mergeable"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "if"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "num_threads"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "collapse"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "static"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "dynamic"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "guided"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "runtime"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "&&"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "||"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "min"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "max"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "abstract"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "assert"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "boolean"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "break"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "byte"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "case"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "catch"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "char"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "class"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "const"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "continue"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "default"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "do"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "double"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "else"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "enum"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "extends"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "false"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "final"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "finally"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "for"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "goto"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "if"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string/jumbo v2, "implements"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string/jumbo v2, "import"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string/jumbo v2, "instanceof"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string/jumbo v2, "interface"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string/jumbo v2, "long"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string/jumbo v2, "native"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "new"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "package"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "private"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string/jumbo v2, "protected"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "public"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "return"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "short"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "static"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "strictfp"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "super"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v2, "switch"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v2, "synchronized"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "this"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "throw"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "throws"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "transient"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "true"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "try"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "void"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "volatile"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "while"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string/jumbo v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string/jumbo v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string/jumbo v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string/jumbo v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string/jumbo v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string/jumbo v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string/jumbo v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string/jumbo v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string/jumbo v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string/jumbo v2, "!"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string/jumbo v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string/jumbo v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string/jumbo v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string/jumbo v2, "=="

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string/jumbo v2, "<="

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string/jumbo v2, ">="

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string/jumbo v2, "!="

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string/jumbo v2, "||"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string/jumbo v2, "&&"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string/jumbo v2, "++"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string/jumbo v2, "--"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string/jumbo v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string/jumbo v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string/jumbo v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string/jumbo v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string/jumbo v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string/jumbo v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string/jumbo v2, "<<"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string/jumbo v2, "+="

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string/jumbo v2, "-="

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string/jumbo v2, "*="

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string/jumbo v2, "/="

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string/jumbo v2, "&="

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string/jumbo v2, "|="

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string/jumbo v2, "^="

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string/jumbo v2, "%="

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string/jumbo v2, "<<="

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string/jumbo v2, ">>="

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string/jumbo v2, ">>>="

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string/jumbo v2, "..."

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string/jumbo v2, ">>>"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string/jumbo v2, ">>"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string/jumbo v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string/jumbo v2, "\u001a"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DEFAULT"

    aput-object v1, v0, v5

    const-string/jumbo v1, "IN_OMP_COMMENT"

    aput-object v1, v0, v8

    const-string/jumbo v1, "IN_FORMAL_COMMENT"

    aput-object v1, v0, v6

    const-string/jumbo v1, "IN_MULTI_LINE_COMMENT"

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0xbd

    new-array v0, v0, [I

    aput v4, v0, v5

    aput v4, v0, v8

    aput v4, v0, v6

    aput v4, v0, v7

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    const/16 v1, 0x8

    aput v4, v0, v1

    const/16 v1, 0x9

    aput v4, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v4, v0, v1

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v1, 0xd

    aput v4, v0, v1

    const/16 v1, 0xe

    aput v4, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    const/16 v1, 0x12

    aput v4, v0, v1

    const/16 v1, 0x13

    aput v4, v0, v1

    const/16 v1, 0x14

    aput v4, v0, v1

    const/16 v1, 0x15

    aput v4, v0, v1

    const/16 v1, 0x16

    aput v4, v0, v1

    const/16 v1, 0x17

    aput v4, v0, v1

    const/16 v1, 0x18

    aput v4, v0, v1

    const/16 v1, 0x19

    aput v4, v0, v1

    const/16 v1, 0x1a

    aput v4, v0, v1

    const/16 v1, 0x1b

    aput v4, v0, v1

    const/16 v1, 0x1c

    aput v4, v0, v1

    const/16 v1, 0x1d

    aput v4, v0, v1

    const/16 v1, 0x1e

    aput v4, v0, v1

    const/16 v1, 0x1f

    aput v4, v0, v1

    const/16 v1, 0x20

    aput v4, v0, v1

    const/16 v1, 0x21

    aput v4, v0, v1

    const/16 v1, 0x22

    aput v4, v0, v1

    const/16 v1, 0x23

    aput v4, v0, v1

    const/16 v1, 0x24

    aput v4, v0, v1

    const/16 v1, 0x25

    aput v4, v0, v1

    const/16 v1, 0x26

    aput v4, v0, v1

    const/16 v1, 0x27

    aput v4, v0, v1

    const/16 v1, 0x28

    aput v4, v0, v1

    const/16 v1, 0x29

    aput v4, v0, v1

    const/16 v1, 0x2a

    aput v4, v0, v1

    const/16 v1, 0x2b

    aput v4, v0, v1

    const/16 v1, 0x2c

    aput v4, v0, v1

    const/16 v1, 0x2d

    aput v4, v0, v1

    const/16 v1, 0x2e

    aput v4, v0, v1

    const/16 v1, 0x2f

    aput v4, v0, v1

    const/16 v1, 0x30

    aput v4, v0, v1

    const/16 v1, 0x31

    aput v4, v0, v1

    const/16 v1, 0x32

    aput v4, v0, v1

    const/16 v1, 0x33

    aput v4, v0, v1

    const/16 v1, 0x34

    aput v4, v0, v1

    const/16 v1, 0x35

    aput v4, v0, v1

    const/16 v1, 0x36

    aput v4, v0, v1

    const/16 v1, 0x37

    aput v4, v0, v1

    const/16 v1, 0x38

    aput v4, v0, v1

    const/16 v1, 0x39

    aput v4, v0, v1

    const/16 v1, 0x3a

    aput v5, v0, v1

    const/16 v1, 0x3b

    aput v4, v0, v1

    const/16 v1, 0x3c

    aput v4, v0, v1

    const/16 v1, 0x3d

    aput v4, v0, v1

    const/16 v1, 0x3e

    aput v4, v0, v1

    const/16 v1, 0x3f

    aput v4, v0, v1

    const/16 v1, 0x40

    aput v4, v0, v1

    const/16 v1, 0x41

    aput v6, v0, v1

    const/16 v1, 0x42

    aput v7, v0, v1

    const/16 v1, 0x43

    aput v4, v0, v1

    const/16 v1, 0x44

    aput v5, v0, v1

    const/16 v1, 0x45

    aput v5, v0, v1

    const/16 v1, 0x46

    aput v4, v0, v1

    const/16 v1, 0x47

    aput v4, v0, v1

    const/16 v1, 0x48

    aput v4, v0, v1

    const/16 v1, 0x49

    aput v4, v0, v1

    const/16 v1, 0x4a

    aput v4, v0, v1

    const/16 v1, 0x4b

    aput v4, v0, v1

    const/16 v1, 0x4c

    aput v4, v0, v1

    const/16 v1, 0x4d

    aput v4, v0, v1

    const/16 v1, 0x4e

    aput v4, v0, v1

    const/16 v1, 0x4f

    aput v4, v0, v1

    const/16 v1, 0x50

    aput v4, v0, v1

    const/16 v1, 0x51

    aput v4, v0, v1

    const/16 v1, 0x52

    aput v4, v0, v1

    const/16 v1, 0x53

    aput v4, v0, v1

    const/16 v1, 0x54

    aput v4, v0, v1

    const/16 v1, 0x55

    aput v4, v0, v1

    const/16 v1, 0x56

    aput v4, v0, v1

    const/16 v1, 0x57

    aput v4, v0, v1

    const/16 v1, 0x58

    aput v4, v0, v1

    const/16 v1, 0x59

    aput v4, v0, v1

    const/16 v1, 0x5a

    aput v4, v0, v1

    const/16 v1, 0x5b

    aput v4, v0, v1

    const/16 v1, 0x5c

    aput v4, v0, v1

    const/16 v1, 0x5d

    aput v4, v0, v1

    const/16 v1, 0x5e

    aput v4, v0, v1

    const/16 v1, 0x5f

    aput v4, v0, v1

    const/16 v1, 0x60

    aput v4, v0, v1

    const/16 v1, 0x61

    aput v4, v0, v1

    const/16 v1, 0x62

    aput v4, v0, v1

    const/16 v1, 0x63

    aput v4, v0, v1

    const/16 v1, 0x64

    aput v4, v0, v1

    const/16 v1, 0x65

    aput v4, v0, v1

    const/16 v1, 0x66

    aput v4, v0, v1

    const/16 v1, 0x67

    aput v4, v0, v1

    const/16 v1, 0x68

    aput v4, v0, v1

    const/16 v1, 0x69

    aput v4, v0, v1

    const/16 v1, 0x6a

    aput v4, v0, v1

    const/16 v1, 0x6b

    aput v4, v0, v1

    const/16 v1, 0x6c

    aput v4, v0, v1

    const/16 v1, 0x6d

    aput v4, v0, v1

    const/16 v1, 0x6e

    aput v4, v0, v1

    const/16 v1, 0x6f

    aput v4, v0, v1

    const/16 v1, 0x70

    aput v4, v0, v1

    const/16 v1, 0x71

    aput v4, v0, v1

    const/16 v1, 0x72

    aput v4, v0, v1

    const/16 v1, 0x73

    aput v4, v0, v1

    const/16 v1, 0x74

    aput v4, v0, v1

    const/16 v1, 0x75

    aput v4, v0, v1

    const/16 v1, 0x76

    aput v4, v0, v1

    const/16 v1, 0x77

    aput v4, v0, v1

    const/16 v1, 0x78

    aput v4, v0, v1

    const/16 v1, 0x79

    aput v4, v0, v1

    const/16 v1, 0x7a

    aput v4, v0, v1

    const/16 v1, 0x7b

    aput v4, v0, v1

    const/16 v1, 0x7c

    aput v4, v0, v1

    const/16 v1, 0x7d

    aput v4, v0, v1

    const/16 v1, 0x7e

    aput v4, v0, v1

    const/16 v1, 0x7f

    aput v4, v0, v1

    const/16 v1, 0x80

    aput v4, v0, v1

    const/16 v1, 0x81

    aput v4, v0, v1

    const/16 v1, 0x82

    aput v4, v0, v1

    const/16 v1, 0x83

    aput v4, v0, v1

    const/16 v1, 0x84

    aput v4, v0, v1

    const/16 v1, 0x85

    aput v4, v0, v1

    const/16 v1, 0x86

    aput v4, v0, v1

    const/16 v1, 0x87

    aput v4, v0, v1

    const/16 v1, 0x88

    aput v4, v0, v1

    const/16 v1, 0x89

    aput v4, v0, v1

    const/16 v1, 0x8a

    aput v4, v0, v1

    const/16 v1, 0x8b

    aput v4, v0, v1

    const/16 v1, 0x8c

    aput v4, v0, v1

    const/16 v1, 0x8d

    aput v4, v0, v1

    const/16 v1, 0x8e

    aput v4, v0, v1

    const/16 v1, 0x8f

    aput v4, v0, v1

    const/16 v1, 0x90

    aput v4, v0, v1

    const/16 v1, 0x91

    aput v4, v0, v1

    const/16 v1, 0x92

    aput v4, v0, v1

    const/16 v1, 0x93

    aput v4, v0, v1

    const/16 v1, 0x94

    aput v4, v0, v1

    const/16 v1, 0x95

    aput v4, v0, v1

    const/16 v1, 0x96

    aput v4, v0, v1

    const/16 v1, 0x97

    aput v4, v0, v1

    const/16 v1, 0x98

    aput v4, v0, v1

    const/16 v1, 0x99

    aput v4, v0, v1

    const/16 v1, 0x9a

    aput v4, v0, v1

    const/16 v1, 0x9b

    aput v4, v0, v1

    const/16 v1, 0x9c

    aput v4, v0, v1

    const/16 v1, 0x9d

    aput v4, v0, v1

    const/16 v1, 0x9e

    aput v4, v0, v1

    const/16 v1, 0x9f

    aput v4, v0, v1

    const/16 v1, 0xa0

    aput v4, v0, v1

    const/16 v1, 0xa1

    aput v4, v0, v1

    const/16 v1, 0xa2

    aput v4, v0, v1

    const/16 v1, 0xa3

    aput v4, v0, v1

    const/16 v1, 0xa4

    aput v4, v0, v1

    const/16 v1, 0xa5

    aput v4, v0, v1

    const/16 v1, 0xa6

    aput v4, v0, v1

    const/16 v1, 0xa7

    aput v4, v0, v1

    const/16 v1, 0xa8

    aput v4, v0, v1

    const/16 v1, 0xa9

    aput v4, v0, v1

    const/16 v1, 0xaa

    aput v4, v0, v1

    const/16 v1, 0xab

    aput v4, v0, v1

    const/16 v1, 0xac

    aput v4, v0, v1

    const/16 v1, 0xad

    aput v4, v0, v1

    const/16 v1, 0xae

    aput v4, v0, v1

    const/16 v1, 0xaf

    aput v4, v0, v1

    const/16 v1, 0xb0

    aput v4, v0, v1

    const/16 v1, 0xb1

    aput v4, v0, v1

    const/16 v1, 0xb2

    aput v4, v0, v1

    const/16 v1, 0xb3

    aput v4, v0, v1

    const/16 v1, 0xb4

    aput v4, v0, v1

    const/16 v1, 0xb5

    aput v4, v0, v1

    const/16 v1, 0xb6

    aput v4, v0, v1

    const/16 v1, 0xb7

    aput v4, v0, v1

    const/16 v1, 0xb8

    aput v4, v0, v1

    const/16 v1, 0xb9

    aput v4, v0, v1

    const/16 v1, 0xba

    aput v4, v0, v1

    const/16 v1, 0xbb

    aput v4, v0, v1

    const/16 v1, 0xbc

    aput v4, v0, v1

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    new-array v0, v7, [J

    const-wide v2, 0xa7fffffffffff8fL

    aput-wide v2, v0, v5

    const-wide v2, 0x1fffffffffffff80L

    aput-wide v2, v0, v8

    const-wide v2, 0x1ffffffffffffce1L    # 1.491668146239909E-154

    aput-wide v2, v0, v6

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoToken:[J

    new-array v0, v7, [J

    const-wide v2, -0xbffffffffffff90L

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x39

    aput-wide v2, v0, v8

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v6

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoSkip:[J

    new-array v0, v7, [J

    const-wide v2, -0xbffffffffffff90L

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x39

    aput-wide v2, v0, v8

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v6

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoSpecial:[J

    new-array v0, v7, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x46

    aput-wide v2, v0, v8

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v6

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoMore:[J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaCharStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/16 v0, 0x51

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjrounds:[I

    const/16 v0, 0xa2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaCharStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;-><init>(Lcom/samsung/javaomp/compiler/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    const/16 v0, 0x51

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0
.end method

.method private jjAddStates(II)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-eq p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final jjCanMove_0(IIIJJ)Z
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    return v0

    :pswitch_0
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec2:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static final jjCanMove_1(IIIJJ)Z
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec3:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_25

    return v0

    :sswitch_0
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec4:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec5:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :sswitch_2
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec6:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2

    :sswitch_3
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec7:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    :goto_3
    return v0

    :cond_3
    move v0, v1

    goto :goto_3

    :sswitch_4
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec8:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :goto_4
    return v0

    :cond_4
    move v0, v1

    goto :goto_4

    :sswitch_5
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec9:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    :goto_5
    return v0

    :cond_5
    move v0, v1

    goto :goto_5

    :sswitch_6
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec10:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    :goto_6
    return v0

    :cond_6
    move v0, v1

    goto :goto_6

    :sswitch_7
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec11:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    :goto_7
    return v0

    :cond_7
    move v0, v1

    goto :goto_7

    :sswitch_8
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec12:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    :goto_8
    return v0

    :cond_8
    move v0, v1

    goto :goto_8

    :sswitch_9
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec13:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    :goto_9
    return v0

    :cond_9
    move v0, v1

    goto :goto_9

    :sswitch_a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec14:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    :goto_a
    return v0

    :cond_a
    move v0, v1

    goto :goto_a

    :sswitch_b
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec15:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    :goto_b
    return v0

    :cond_b
    move v0, v1

    goto :goto_b

    :sswitch_c
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec16:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    :goto_c
    return v0

    :cond_c
    move v0, v1

    goto :goto_c

    :sswitch_d
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec17:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    :goto_d
    return v0

    :cond_d
    move v0, v1

    goto :goto_d

    :sswitch_e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec18:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    :goto_e
    return v0

    :cond_e
    move v0, v1

    goto :goto_e

    :sswitch_f
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec19:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    :goto_f
    return v0

    :cond_f
    move v0, v1

    goto :goto_f

    :sswitch_10
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec20:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    :goto_10
    return v0

    :cond_10
    move v0, v1

    goto :goto_10

    :sswitch_11
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec21:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    :goto_11
    return v0

    :cond_11
    move v0, v1

    goto :goto_11

    :sswitch_12
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    :goto_12
    return v0

    :cond_12
    move v0, v1

    goto :goto_12

    :sswitch_13
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec22:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    :goto_13
    return v0

    :cond_13
    move v0, v1

    goto :goto_13

    :sswitch_14
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec23:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    :goto_14
    return v0

    :cond_14
    move v0, v1

    goto :goto_14

    :sswitch_15
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec24:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    :goto_15
    return v0

    :cond_15
    move v0, v1

    goto :goto_15

    :sswitch_16
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec25:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    :goto_16
    return v0

    :cond_16
    move v0, v1

    goto :goto_16

    :sswitch_17
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec26:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    :goto_17
    return v0

    :cond_17
    move v0, v1

    goto :goto_17

    :sswitch_18
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec27:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    :goto_18
    return v0

    :cond_18
    move v0, v1

    goto :goto_18

    :sswitch_19
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec28:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    :goto_19
    return v0

    :cond_19
    move v0, v1

    goto :goto_19

    :sswitch_1a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec29:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    :goto_1a
    return v0

    :cond_1a
    move v0, v1

    goto :goto_1a

    :sswitch_1b
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec30:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    :goto_1b
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1b

    :sswitch_1c
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec31:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    :goto_1c
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1c

    :sswitch_1d
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec32:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    :goto_1d
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1d

    :sswitch_1e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec33:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    :goto_1e
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1e

    :sswitch_1f
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec34:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    :goto_1f
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1f

    :sswitch_20
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec35:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_20

    :goto_20
    return v0

    :cond_20
    move v0, v1

    goto :goto_20

    :sswitch_21
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec36:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    :goto_21
    return v0

    :cond_21
    move v0, v1

    goto :goto_21

    :sswitch_22
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec37:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    :goto_22
    return v0

    :cond_22
    move v0, v1

    goto :goto_22

    :sswitch_23
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec38:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_23

    :goto_23
    return v0

    :cond_23
    move v0, v1

    goto :goto_23

    :sswitch_24
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec39:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    :goto_24
    return v0

    :cond_24
    move v0, v1

    goto :goto_24

    :cond_25
    return v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_f
        0x12 -> :sswitch_10
        0x13 -> :sswitch_11
        0x14 -> :sswitch_12
        0x16 -> :sswitch_13
        0x17 -> :sswitch_14
        0x18 -> :sswitch_15
        0x1e -> :sswitch_16
        0x1f -> :sswitch_17
        0x20 -> :sswitch_18
        0x21 -> :sswitch_19
        0x30 -> :sswitch_1a
        0x31 -> :sswitch_1b
        0x4d -> :sswitch_1c
        0x9f -> :sswitch_1d
        0xa4 -> :sswitch_1e
        0xd7 -> :sswitch_1f
        0xfa -> :sswitch_20
        0xfb -> :sswitch_21
        0xfd -> :sswitch_22
        0xfe -> :sswitch_23
        0xff -> :sswitch_24
    .end sparse-switch
.end method

.method private static final jjCanMove_2(IIIJJ)Z
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec3:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_25

    return v0

    :sswitch_0
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec40:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec5:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :sswitch_2
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec41:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2

    :sswitch_3
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec42:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    :goto_3
    return v0

    :cond_3
    move v0, v1

    goto :goto_3

    :sswitch_4
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec43:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :goto_4
    return v0

    :cond_4
    move v0, v1

    goto :goto_4

    :sswitch_5
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec44:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    :goto_5
    return v0

    :cond_5
    move v0, v1

    goto :goto_5

    :sswitch_6
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec45:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    :goto_6
    return v0

    :cond_6
    move v0, v1

    goto :goto_6

    :sswitch_7
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec46:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    :goto_7
    return v0

    :cond_7
    move v0, v1

    goto :goto_7

    :sswitch_8
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec47:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    :goto_8
    return v0

    :cond_8
    move v0, v1

    goto :goto_8

    :sswitch_9
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec48:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    :goto_9
    return v0

    :cond_9
    move v0, v1

    goto :goto_9

    :sswitch_a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec49:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    :goto_a
    return v0

    :cond_a
    move v0, v1

    goto :goto_a

    :sswitch_b
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec50:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    :goto_b
    return v0

    :cond_b
    move v0, v1

    goto :goto_b

    :sswitch_c
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec51:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    :goto_c
    return v0

    :cond_c
    move v0, v1

    goto :goto_c

    :sswitch_d
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec52:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    :goto_d
    return v0

    :cond_d
    move v0, v1

    goto :goto_d

    :sswitch_e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec53:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    :goto_e
    return v0

    :cond_e
    move v0, v1

    goto :goto_e

    :sswitch_f
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec19:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    :goto_f
    return v0

    :cond_f
    move v0, v1

    goto :goto_f

    :sswitch_10
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec20:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    :goto_10
    return v0

    :cond_10
    move v0, v1

    goto :goto_10

    :sswitch_11
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec54:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    :goto_11
    return v0

    :cond_11
    move v0, v1

    goto :goto_11

    :sswitch_12
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    :goto_12
    return v0

    :cond_12
    move v0, v1

    goto :goto_12

    :sswitch_13
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec22:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    :goto_13
    return v0

    :cond_13
    move v0, v1

    goto :goto_13

    :sswitch_14
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec55:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    :goto_14
    return v0

    :cond_14
    move v0, v1

    goto :goto_14

    :sswitch_15
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec56:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    :goto_15
    return v0

    :cond_15
    move v0, v1

    goto :goto_15

    :sswitch_16
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec25:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    :goto_16
    return v0

    :cond_16
    move v0, v1

    goto :goto_16

    :sswitch_17
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec26:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    :goto_17
    return v0

    :cond_17
    move v0, v1

    goto :goto_17

    :sswitch_18
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec57:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    :goto_18
    return v0

    :cond_18
    move v0, v1

    goto :goto_18

    :sswitch_19
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec28:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    :goto_19
    return v0

    :cond_19
    move v0, v1

    goto :goto_19

    :sswitch_1a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec58:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    :goto_1a
    return v0

    :cond_1a
    move v0, v1

    goto :goto_1a

    :sswitch_1b
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec30:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    :goto_1b
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1b

    :sswitch_1c
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec31:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    :goto_1c
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1c

    :sswitch_1d
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec32:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    :goto_1d
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1d

    :sswitch_1e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec33:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    :goto_1e
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1e

    :sswitch_1f
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec34:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    :goto_1f
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1f

    :sswitch_20
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec35:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_20

    :goto_20
    return v0

    :cond_20
    move v0, v1

    goto :goto_20

    :sswitch_21
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec59:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    :goto_21
    return v0

    :cond_21
    move v0, v1

    goto :goto_21

    :sswitch_22
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec37:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    :goto_22
    return v0

    :cond_22
    move v0, v1

    goto :goto_22

    :sswitch_23
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec60:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_23

    :goto_23
    return v0

    :cond_23
    move v0, v1

    goto :goto_23

    :sswitch_24
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec61:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    :goto_24
    return v0

    :cond_24
    move v0, v1

    goto :goto_24

    :cond_25
    return v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_f
        0x12 -> :sswitch_10
        0x13 -> :sswitch_11
        0x14 -> :sswitch_12
        0x16 -> :sswitch_13
        0x17 -> :sswitch_14
        0x18 -> :sswitch_15
        0x1e -> :sswitch_16
        0x1f -> :sswitch_17
        0x20 -> :sswitch_18
        0x21 -> :sswitch_19
        0x30 -> :sswitch_1a
        0x31 -> :sswitch_1b
        0x4d -> :sswitch_1c
        0x9f -> :sswitch_1d
        0xa4 -> :sswitch_1e
        0xd7 -> :sswitch_1f
        0xfa -> :sswitch_20
        0xfb -> :sswitch_21
        0xfd -> :sswitch_22
        0xfe -> :sswitch_23
        0xff -> :sswitch_24
    .end sparse-switch
.end method

.method private jjCheckNAdd(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    aput v1, v0, p1

    goto :goto_0
.end method

.method private jjCheckNAddStates(II)V
    .locals 1

    :goto_0
    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-eq p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private jjCheckNAddTwoStates(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 13

    const/4 v2, 0x0

    const/16 v0, 0x51

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    move v8, v1

    move v9, v2

    :goto_0
    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_3

    :goto_1
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v2, 0x40

    if-lt v1, v2, :cond_4

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v2, 0x80

    if-lt v1, v2, :cond_26

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    shr-int/lit8 v1, v1, 0x8

    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v3, v1, 0x3f

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    iget-char v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    const-wide/16 v10, 0x1

    shl-long v6, v10, v6

    :cond_0
    iget-object v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v10, v10, v8

    sparse-switch v10, :sswitch_data_0

    :cond_1
    :goto_2
    if-ne v8, v9, :cond_0

    :cond_2
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_32

    :goto_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    iput v9, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v9, 0x51

    if-eq v1, v2, :cond_33

    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    int-to-char v3, v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v1

    move v9, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->ReInitRounds()V

    goto :goto_1

    :cond_4
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    :goto_4
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v1, v1, v8

    packed-switch v1, :pswitch_data_0

    :cond_5
    :goto_5
    :pswitch_0
    if-eq v8, v9, :cond_2

    goto :goto_4

    :pswitch_1
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x2f

    if-eq v1, v4, :cond_6

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x2a

    if-eq v1, v4, :cond_8

    :goto_6
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x2f

    if-ne v1, v4, :cond_5

    const/16 v1, 0x2e

    const/16 v4, 0x2f

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_5

    :cond_6
    const/16 v1, 0x43

    if-gt v0, v1, :cond_7

    :goto_7
    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_6

    :cond_7
    const/16 v0, 0x43

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x38

    aput v5, v1, v4

    goto :goto_6

    :pswitch_2
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    const/16 v4, 0x9

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    :cond_9
    :goto_8
    const-wide/high16 v4, 0x3fe000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_11

    const/16 v1, 0x7c

    if-gt v0, v1, :cond_10

    :goto_9
    const/4 v1, 0x1

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_5

    :cond_a
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x2f

    if-eq v1, v4, :cond_b

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x24

    if-eq v1, v4, :cond_c

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x22

    if-eq v1, v4, :cond_e

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x27

    if-eq v1, v4, :cond_f

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_9

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_8

    :cond_b
    const/16 v1, 0xa

    const/16 v4, 0xc

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_8

    :cond_c
    const/16 v1, 0x87

    if-gt v0, v1, :cond_d

    :goto_a
    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_8

    :cond_d
    const/16 v0, 0x87

    goto :goto_a

    :cond_e
    const/16 v1, 0xd

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_8

    :cond_f
    const/16 v1, 0x10

    const/16 v4, 0x11

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_8

    :cond_10
    const/16 v0, 0x7c

    goto :goto_9

    :cond_11
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x30

    if-ne v1, v4, :cond_5

    const/16 v1, 0x7c

    if-gt v0, v1, :cond_12

    :goto_b
    const/16 v1, 0x12

    const/16 v4, 0x16

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :cond_12
    const/16 v0, 0x7c

    goto :goto_b

    :pswitch_3
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x7c

    if-gt v0, v1, :cond_13

    :goto_c
    const/4 v1, 0x1

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :cond_13
    const/16 v0, 0x7c

    goto :goto_c

    :pswitch_4
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_5

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_5
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x80

    if-gt v0, v1, :cond_14

    :goto_d
    const/16 v1, 0x17

    const/16 v4, 0x19

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :cond_14
    const/16 v0, 0x80

    goto :goto_d

    :pswitch_6
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_7
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x80

    if-gt v0, v1, :cond_15

    :goto_e
    const/4 v1, 0x7

    const/16 v4, 0x8

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :cond_15
    const/16 v0, 0x80

    goto :goto_e

    :pswitch_8
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x27

    if-ne v1, v4, :cond_5

    const/16 v1, 0x10

    const/16 v4, 0x11

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5

    :pswitch_9
    const-wide v4, -0x8000002401L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_a
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x27

    if-ne v1, v4, :cond_5

    const/16 v1, 0x85

    if-le v0, v1, :cond_5

    const/16 v0, 0x85

    goto/16 :goto_5

    :pswitch_b
    const-wide v4, 0x8400000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_c
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0xf

    const/16 v4, 0xb

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_d
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_e
    const-wide/high16 v4, 0xf000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x11

    aput v5, v1, v4

    goto/16 :goto_5

    :pswitch_f
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_10
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x22

    if-ne v1, v4, :cond_5

    const/16 v1, 0xd

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_11
    const-wide v4, -0x400002401L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0xd

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_12
    const-wide v4, 0x8400000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0xd

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_13
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x22

    if-ne v1, v4, :cond_5

    const/16 v1, 0x86

    if-le v0, v1, :cond_5

    const/16 v0, 0x86

    goto/16 :goto_5

    :pswitch_14
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x1a

    const/16 v4, 0x1d

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_15
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0xd

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_16
    const-wide/high16 v4, 0xf000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x1a

    aput v5, v1, v4

    goto/16 :goto_5

    :pswitch_17
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_18
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x24

    if-ne v1, v4, :cond_5

    const/16 v1, 0x87

    if-gt v0, v1, :cond_16

    :goto_f
    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :cond_16
    const/16 v0, 0x87

    goto :goto_f

    :pswitch_19
    const-wide v4, 0x3ff00100fffc1ffL

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x87

    if-gt v0, v1, :cond_17

    :goto_10
    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :cond_17
    const/16 v0, 0x87

    goto :goto_10

    :pswitch_1a
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    const/16 v4, 0x9

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_1b
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x1e

    const/16 v4, 0x20

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_1c
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x21

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_1d
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x21

    const/16 v4, 0x8

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_1e
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x22

    const/16 v4, 0x23

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_1f
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x25

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_20
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x80

    if-gt v0, v1, :cond_18

    :goto_11
    const/16 v1, 0x25

    const/16 v4, 0x8

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :cond_18
    const/16 v0, 0x80

    goto :goto_11

    :pswitch_21
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x26

    const/16 v4, 0x27

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_22
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_5

    const/16 v1, 0x80

    if-gt v0, v1, :cond_19

    :goto_12
    const/16 v1, 0x21

    const/16 v4, 0x23

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :cond_19
    const/16 v0, 0x80

    goto :goto_12

    :pswitch_23
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x80

    if-gt v0, v1, :cond_1a

    :goto_13
    const/16 v1, 0x21

    const/16 v4, 0x23

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :cond_1a
    const/16 v0, 0x80

    goto :goto_13

    :pswitch_24
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x2b

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_25
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x80

    if-gt v0, v1, :cond_1b

    :goto_14
    const/16 v1, 0x2b

    const/16 v4, 0x8

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :cond_1b
    const/16 v0, 0x80

    goto :goto_14

    :pswitch_26
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x2f

    if-ne v1, v4, :cond_5

    const/16 v1, 0xa

    const/16 v4, 0xc

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5

    :pswitch_27
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x20

    if-ne v1, v4, :cond_5

    const/16 v1, 0x2e

    const/16 v4, 0x2f

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_28
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x23

    if-ne v1, v4, :cond_5

    const/16 v1, 0x30

    const/16 v4, 0x37

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_29
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x20

    if-ne v1, v4, :cond_5

    const/16 v1, 0x30

    const/16 v4, 0x37

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_2a
    const-wide/16 v4, -0x2401

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1c

    :goto_15
    const/16 v1, 0x24

    const/16 v4, 0x26

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5

    :cond_1c
    const/4 v0, 0x1

    goto :goto_15

    :pswitch_2b
    const-wide/16 v4, 0x2400

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    :cond_1d
    const/4 v0, 0x1

    goto/16 :goto_5

    :pswitch_2c
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0xa

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1d

    goto/16 :goto_5

    :pswitch_2d
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0xd

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x34

    aput v5, v1, v4

    goto/16 :goto_5

    :pswitch_2e
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x39

    aput v5, v1, v4

    goto/16 :goto_5

    :pswitch_2f
    const-wide v4, -0x800000000001L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x41

    if-le v0, v1, :cond_5

    const/16 v0, 0x41

    goto/16 :goto_5

    :pswitch_30
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x38

    aput v5, v1, v4

    goto/16 :goto_5

    :pswitch_31
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x2f

    if-ne v1, v4, :cond_5

    const/16 v1, 0x43

    if-gt v0, v1, :cond_1e

    :goto_16
    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :cond_1e
    const/16 v0, 0x43

    goto :goto_16

    :pswitch_32
    const-wide/16 v4, -0x2401

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x43

    if-gt v0, v1, :cond_1f

    :goto_17
    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :cond_1f
    const/16 v0, 0x43

    goto :goto_17

    :pswitch_33
    const-wide/16 v4, 0x2400

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x43

    if-le v0, v1, :cond_5

    :cond_20
    const/16 v0, 0x43

    goto/16 :goto_5

    :pswitch_34
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0xa

    if-ne v1, v4, :cond_5

    const/16 v1, 0x43

    if-gt v0, v1, :cond_20

    goto/16 :goto_5

    :pswitch_35
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0xd

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x3e

    aput v5, v1, v4

    goto/16 :goto_5

    :pswitch_36
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x30

    if-ne v1, v4, :cond_5

    const/16 v1, 0x7c

    if-gt v0, v1, :cond_21

    :goto_18
    const/16 v1, 0x12

    const/16 v4, 0x16

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :cond_21
    const/16 v0, 0x7c

    goto :goto_18

    :pswitch_37
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x7c

    if-gt v0, v1, :cond_22

    :goto_19
    const/16 v1, 0x42

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :cond_22
    const/16 v0, 0x7c

    goto :goto_19

    :pswitch_38
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x7c

    if-gt v0, v1, :cond_23

    :goto_1a
    const/16 v1, 0x43

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :cond_23
    const/16 v0, 0x7c

    goto :goto_1a

    :pswitch_39
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x27

    const/16 v4, 0x28

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5

    :pswitch_3a
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_5

    const/16 v1, 0x47

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_3b
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x47

    const/16 v4, 0x48

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_3c
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_3d
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x80

    if-gt v0, v1, :cond_24

    :goto_1b
    const/16 v1, 0x4a

    const/16 v4, 0x8

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :cond_24
    const/16 v0, 0x80

    goto :goto_1b

    :pswitch_3e
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x29

    const/16 v4, 0x2b

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_3f
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_5

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_40
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_41
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x80

    if-gt v0, v1, :cond_25

    :goto_1c
    const/16 v1, 0x50

    const/16 v4, 0x8

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :cond_25
    const/16 v0, 0x80

    goto :goto_1c

    :cond_26
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit8 v1, v1, 0x3f

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    :goto_1d
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v1, v1, v8

    packed-switch v1, :pswitch_data_1

    :cond_27
    :goto_1e
    :pswitch_42
    if-eq v8, v9, :cond_2

    goto :goto_1d

    :pswitch_43
    const-wide v4, 0x7fffffe87fffffeL

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x87

    if-gt v0, v1, :cond_28

    :goto_1f
    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1e

    :cond_28
    const/16 v0, 0x87

    goto :goto_1f

    :pswitch_44
    const-wide v4, 0x100000001000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x7c

    if-le v0, v1, :cond_27

    const/16 v0, 0x7c

    goto :goto_1e

    :pswitch_45
    const-wide v4, 0x2000000020L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x2c

    const/16 v4, 0x2d

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_1e

    :pswitch_46
    const-wide v4, 0x5000000050L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x80

    if-le v0, v1, :cond_27

    const/16 v0, 0x80

    goto :goto_1e

    :pswitch_47
    const-wide/32 v4, -0x10000001

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1e

    :pswitch_48
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_27

    const/16 v1, 0x2e

    const/16 v4, 0x30

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_1e

    :pswitch_49
    const-wide v4, 0x14404410000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1e

    :pswitch_4a
    const-wide/32 v4, -0x10000001

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0xd

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1e

    :pswitch_4b
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_27

    const/16 v1, 0x31

    const/16 v4, 0x33

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1e

    :pswitch_4c
    const-wide v4, 0x14404410000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0xd

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1e

    :pswitch_4d
    const-wide v4, -0x7800000178000002L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x87

    if-gt v0, v1, :cond_29

    :goto_20
    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1e

    :cond_29
    const/16 v0, 0x87

    goto :goto_20

    :pswitch_4e
    const-wide v4, 0x2000000020L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x34

    const/16 v4, 0x35

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1e

    :pswitch_4f
    const-wide v4, 0x2000000020L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x36

    const/16 v4, 0x37

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1e

    :pswitch_50
    const-wide v4, 0x2000000020L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x38

    const/16 v4, 0x39

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1e

    :pswitch_51
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x70

    if-ne v1, v4, :cond_27

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2a

    :goto_21
    const/16 v1, 0x24

    const/16 v4, 0x26

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1e

    :cond_2a
    const/4 v0, 0x1

    goto :goto_21

    :pswitch_52
    const/4 v1, 0x1

    if-gt v0, v1, :cond_2b

    :goto_22
    const/16 v1, 0x24

    const/16 v4, 0x26

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1e

    :cond_2b
    const/4 v0, 0x1

    goto :goto_22

    :pswitch_53
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x6d

    if-ne v1, v4, :cond_27

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x31

    aput v5, v1, v4

    goto/16 :goto_1e

    :pswitch_54
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x6f

    if-ne v1, v4, :cond_27

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v5, 0x36

    aput v5, v1, v4

    goto/16 :goto_1e

    :pswitch_55
    const/16 v1, 0x41

    if-le v0, v1, :cond_27

    const/16 v0, 0x41

    goto/16 :goto_1e

    :pswitch_56
    const/16 v1, 0x43

    if-gt v0, v1, :cond_2c

    :goto_23
    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1e

    :cond_2c
    const/16 v0, 0x43

    goto :goto_23

    :pswitch_57
    const-wide v4, 0x100000001000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x42

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1e

    :pswitch_58
    const-wide v4, 0x7e0000007eL

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x7c

    if-gt v0, v1, :cond_2d

    :goto_24
    const/16 v1, 0x42

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1e

    :cond_2d
    const/16 v0, 0x7c

    goto :goto_24

    :pswitch_59
    const-wide v4, 0x100000001000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x45

    const/16 v4, 0x46

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1e

    :pswitch_5a
    const-wide v4, 0x7e0000007eL

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x45

    const/16 v4, 0x46

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1e

    :pswitch_5b
    const-wide v4, 0x7e0000007eL

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x3a

    const/16 v4, 0x3b

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1e

    :pswitch_5c
    const-wide v4, 0x1000000010000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x3c

    const/16 v4, 0x3d

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1e

    :pswitch_5d
    const-wide v4, 0x100000001000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1e

    :pswitch_5e
    const-wide v4, 0x7e0000007eL

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x29

    const/16 v4, 0x2b

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1e

    :pswitch_5f
    const-wide v4, 0x1000000010000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    const/16 v1, 0x3e

    const/16 v4, 0x3f

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1e

    :sswitch_0
    invoke-static/range {v1 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x87

    if-gt v0, v10, :cond_2e

    :goto_25
    const/16 v10, 0x1c

    invoke-direct {p0, v10}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_2

    :cond_2e
    const/16 v0, 0x87

    goto :goto_25

    :sswitch_1
    invoke-static/range {v1 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v11, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0xb

    aput v12, v10, v11

    goto/16 :goto_2

    :sswitch_2
    invoke-static/range {v1 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0xd

    const/16 v11, 0xf

    invoke-direct {p0, v10, v11}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_2

    :sswitch_3
    invoke-static/range {v1 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x87

    if-gt v0, v10, :cond_2f

    :goto_26
    const/16 v10, 0x1c

    invoke-direct {p0, v10}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_2

    :cond_2f
    const/16 v0, 0x87

    goto :goto_26

    :sswitch_4
    invoke-static/range {v1 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    if-gt v0, v10, :cond_30

    :goto_27
    const/16 v10, 0x24

    const/16 v11, 0x26

    invoke-direct {p0, v10, v11}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_2

    :cond_30
    const/4 v0, 0x1

    goto :goto_27

    :sswitch_5
    invoke-static/range {v1 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x41

    if-le v0, v10, :cond_1

    const/16 v0, 0x41

    goto/16 :goto_2

    :sswitch_6
    invoke-static/range {v1 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x43

    if-gt v0, v10, :cond_31

    :goto_28
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-direct {p0, v10, v11}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_2

    :cond_31
    const/16 v0, 0x43

    goto :goto_28

    :cond_32
    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    goto/16 :goto_3

    :cond_33
    return p2

    :catch_0
    move-exception v0

    return p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x13 -> :sswitch_2
        0x1c -> :sswitch_3
        0x32 -> :sswitch_4
        0x39 -> :sswitch_5
        0x3c -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_1
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_0
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_0
        :pswitch_0
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_0
        :pswitch_37
        :pswitch_38
        :pswitch_0
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_0
        :pswitch_3c
        :pswitch_3d
        :pswitch_0
        :pswitch_3e
        :pswitch_3f
        :pswitch_0
        :pswitch_40
        :pswitch_41
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_43
        :pswitch_42
        :pswitch_44
        :pswitch_42
        :pswitch_42
        :pswitch_45
        :pswitch_42
        :pswitch_42
        :pswitch_46
        :pswitch_42
        :pswitch_47
        :pswitch_42
        :pswitch_48
        :pswitch_49
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_4d
        :pswitch_42
        :pswitch_42
        :pswitch_4e
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_4f
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_50
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_51
        :pswitch_52
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_53
        :pswitch_54
        :pswitch_42
        :pswitch_55
        :pswitch_42
        :pswitch_42
        :pswitch_56
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_57
        :pswitch_58
        :pswitch_42
        :pswitch_59
        :pswitch_5a
        :pswitch_42
        :pswitch_5b
        :pswitch_5c
        :pswitch_42
        :pswitch_42
        :pswitch_5d
        :pswitch_5e
        :pswitch_42
        :pswitch_5f
    .end packed-switch
.end method

.method private jjMoveNfa_1(II)I
    .locals 12

    const/4 v2, 0x0

    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    move v8, v1

    move v9, v2

    :goto_0
    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_3

    :goto_1
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v2, 0x40

    if-lt v1, v2, :cond_4

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v2, 0x80

    if-lt v1, v2, :cond_11

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    shr-int/lit8 v1, v1, 0x8

    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v3, v1, 0x3f

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    iget-char v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    const-wide/16 v10, 0x1

    shl-long v6, v10, v6

    :cond_0
    iget-object v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v10, v10, v8

    sparse-switch v10, :sswitch_data_0

    :cond_1
    :goto_2
    if-ne v8, v9, :cond_0

    :cond_2
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_17

    :goto_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    iput v9, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v9, 0xc

    if-eq v1, v2, :cond_18

    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    int-to-char v3, v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v1

    move v9, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->ReInitRounds()V

    goto :goto_1

    :cond_4
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    :goto_4
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v1, v1, v8

    packed-switch v1, :pswitch_data_0

    :cond_5
    :goto_5
    :pswitch_0
    if-eq v8, v9, :cond_2

    goto :goto_4

    :pswitch_1
    const-wide/high16 v4, 0x3fe000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    :goto_6
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :cond_6
    const/16 v0, 0x39

    goto :goto_6

    :cond_7
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0xd

    if-eq v1, v4, :cond_8

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0xa

    if-eq v1, v4, :cond_9

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x24

    if-eq v1, v4, :cond_b

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x23

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    const/4 v4, 0x4

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    :goto_7
    const/16 v5, 0xa

    aput v5, v1, v4

    goto :goto_5

    :cond_9
    const/16 v1, 0x3a

    if-le v0, v1, :cond_5

    :cond_a
    const/16 v0, 0x3a

    goto :goto_5

    :cond_b
    const/16 v1, 0x36

    if-gt v0, v1, :cond_c

    :goto_8
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :cond_c
    const/16 v0, 0x36

    goto :goto_8

    :pswitch_2
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x20

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    const/4 v4, 0x4

    invoke-direct {p0, v1, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_5

    :pswitch_3
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x24

    if-ne v1, v4, :cond_5

    const/16 v1, 0x36

    if-gt v0, v1, :cond_d

    :goto_9
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :cond_d
    const/16 v0, 0x36

    goto :goto_9

    :pswitch_4
    const-wide v4, 0x3ff00100fffc1ffL

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x36

    if-gt v0, v1, :cond_e

    :goto_a
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :cond_e
    const/16 v0, 0x36

    goto :goto_a

    :pswitch_5
    const-wide/high16 v4, 0x3fe000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x39

    if-gt v0, v1, :cond_f

    :goto_b
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :cond_f
    const/16 v0, 0x39

    goto :goto_b

    :pswitch_6
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/16 v1, 0x39

    if-gt v0, v1, :cond_10

    :goto_c
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :cond_10
    const/16 v0, 0x39

    goto :goto_c

    :pswitch_7
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0xa

    if-ne v1, v4, :cond_5

    const/16 v1, 0x3a

    if-gt v0, v1, :cond_a

    goto/16 :goto_5

    :pswitch_8
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0xd

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    goto/16 :goto_7

    :cond_11
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit8 v1, v1, 0x3f

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    :goto_d
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v1, v1, v8

    packed-switch v1, :pswitch_data_1

    :cond_12
    :goto_e
    :pswitch_9
    if-eq v8, v9, :cond_2

    goto :goto_d

    :pswitch_a
    const-wide v4, 0x7fffffe87fffffeL

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_12

    const/16 v1, 0x36

    if-gt v0, v1, :cond_13

    :goto_f
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_e

    :cond_13
    const/16 v0, 0x36

    goto :goto_f

    :pswitch_b
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x70

    if-ne v1, v4, :cond_12

    const/4 v1, 0x3

    if-le v0, v1, :cond_12

    const/4 v0, 0x3

    goto :goto_e

    :pswitch_c
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x6d

    if-ne v1, v4, :cond_12

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/4 v5, 0x2

    aput v5, v1, v4

    goto :goto_e

    :pswitch_d
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x6f

    if-ne v1, v4, :cond_12

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/4 v5, 0x3

    aput v5, v1, v4

    goto :goto_e

    :pswitch_e
    const-wide v4, -0x7800000178000002L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_12

    const/16 v1, 0x36

    if-gt v0, v1, :cond_14

    :goto_10
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_e

    :cond_14
    const/16 v0, 0x36

    goto :goto_10

    :sswitch_0
    invoke-static/range {v1 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x36

    if-gt v0, v10, :cond_15

    :goto_11
    const/4 v10, 0x6

    invoke-direct {p0, v10}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_2

    :cond_15
    const/16 v0, 0x36

    goto :goto_11

    :sswitch_1
    invoke-static/range {v1 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x36

    if-gt v0, v10, :cond_16

    :goto_12
    const/4 v10, 0x6

    invoke-direct {p0, v10}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_2

    :cond_16
    const/16 v0, 0x36

    goto :goto_12

    :cond_17
    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    goto/16 :goto_3

    :cond_18
    return p2

    :catch_0
    move-exception v0

    return p2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_e
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 6

    const-wide/32 v4, 0x20000000

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v1, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    :pswitch_1
    const/16 v0, 0x3d

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_2
    const/16 v0, 0x3e

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_3
    const/16 v0, 0x40

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_4
    const/16 v0, 0x3f

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_5
    const/16 v0, 0xba

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_6
    const/16 v0, 0x3c

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_7
    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_8
    const/16 v0, 0xa9

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_9
    const/16 v0, 0xa6

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x800080000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_a
    const/16 v0, 0x8a

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_b
    const/16 v0, 0x8b

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_c
    const/16 v0, 0xa4

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x200000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_d
    const/16 v0, 0xa2

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x80100000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_e
    const/16 v0, 0x91

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_f
    const/16 v0, 0xa3

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x100200000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_10
    const/16 v0, 0x92

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v0, 0x40000000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_11
    const/16 v0, 0xa5

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/16 v0, 0x4

    const-wide v2, 0x400000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_12
    const/16 v0, 0x99

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_13
    const/16 v0, 0x90

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_14
    const/16 v0, 0x95

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x8040008000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_15
    const/16 v0, 0x94

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_16
    const/16 v0, 0xb9

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x1b0000010000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_17
    const/16 v0, 0x98

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_18
    const/16 v0, 0x93

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_19
    const/16 v0, 0x8e

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_1a
    const/16 v0, 0x8f

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_1b
    const/16 v0, 0xa8

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v0, 0x2000000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_1c
    const-wide/16 v0, 0x180

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_1d
    const-wide/16 v0, 0xe00

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_1e
    const-wide/32 v0, 0x3f000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_1f
    const-wide/32 v0, 0x1c0000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_20
    const-wide/32 v0, 0xe00000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_21
    const-wide/32 v0, 0x1f000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_22
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_23
    const-wide v0, 0xfc0000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_24
    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_25
    const-wide v0, 0xe000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_26
    const-wide v0, 0xf0000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_27
    const-wide v0, 0x100000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_28
    const-wide v0, 0x7e00000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_29
    const-wide/high16 v0, 0x1f8000000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_2a
    const-wide/high16 v0, 0x600000000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_2b
    const-wide/high16 v0, 0x800000000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_2c
    const/16 v0, 0x8c

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_2d
    const/16 v0, 0xa7

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x1000040000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_2e
    const/16 v0, 0x8d

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_2f
    const/16 v0, 0x97

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_0
        :pswitch_25
        :pswitch_0
        :pswitch_26
        :pswitch_0
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_0
        :pswitch_2a
        :pswitch_2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v1, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0

    :pswitch_1
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_2
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_3
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_4
    const/16 v0, 0x31

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x800000000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_5
    const/16 v0, 0x28

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_6
    const/16 v0, 0x29

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_7
    const/16 v0, 0x2e

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_8
    const/16 v0, 0x2c

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_9
    const/16 v0, 0x2a

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_a
    const/16 v0, 0x2d

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_c
    const/16 v0, 0x2b

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_d
    const/16 v0, 0x33

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_e
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_f
    const-wide/16 v0, 0x400

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_10
    const-wide v0, 0x204006000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_11
    const-wide v0, 0x808000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_12
    const-wide/32 v0, 0x21001000

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_13
    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_14
    const-wide v0, 0x80000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_15
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_16
    const-wide v0, 0x30000040000800L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_17
    const-wide v0, 0x8100080000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_18
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_19
    const-wide/32 v0, 0x100080

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_1a
    const-wide v0, 0x4000200000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_1b
    const-wide v0, 0x400c08300L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_1c
    const-wide/32 v0, 0x70000

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_1d
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v0, 0x1000000000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 2

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_2(J)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 2

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_3(J)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa10_0(JJ)I
    .locals 9

    const/16 v1, 0x9

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/16 v1, 0x8

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0xa

    return v0

    :pswitch_0
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa11_0(JJ)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa10_1(JJ)I
    .locals 9

    const/16 v8, 0x9

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    const/16 v4, 0xa

    and-long v0, p3, p1

    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    invoke-direct {p0, v8, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v2

    invoke-direct {p0, v8, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    return v4

    :sswitch_0
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    const/16 v0, 0x19

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_2
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x1a

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :sswitch_1
    const-wide v2, 0x100000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x20

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :sswitch_2
    const-wide/32 v2, 0x1000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa11_1(JJ)I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x73 -> :sswitch_1
        0x74 -> :sswitch_2
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa11_0(JJ)I
    .locals 9

    const/16 v8, 0xb

    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/16 v1, 0x9

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    :cond_1
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v8

    :pswitch_0
    const-wide/high16 v6, 0x4000000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x72

    const/16 v1, 0x1c

    invoke-direct {p0, v8, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa11_1(JJ)I
    .locals 9

    const-wide/16 v6, 0x0

    const/16 v5, 0xb

    const/16 v4, 0xa

    and-long v0, p3, p1

    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v2

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    return v5

    :pswitch_0
    const-wide/32 v2, 0x1000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x18

    const/4 v1, 0x6

    invoke-direct {p0, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa1_0(JJ)I
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v0, 0x1

    return v0

    :pswitch_1
    const-wide v0, 0x80000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x9f

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x42

    const/16 v2, 0x38

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_3
    const-wide v0, 0x100000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0xa0

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_4
    const-wide v0, 0x200000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0xa1

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_5
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x40000000000000L

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0xaa

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_1
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x8000000000000L

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/32 v0, 0x4000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0x9a

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_2
    const-wide/32 v0, 0x8000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const/16 v1, 0x9b

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_3
    const-wide/32 v0, 0x10000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/16 v1, 0x9c

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_4
    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    const/16 v1, 0x9d

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_5
    const-wide v0, 0x80000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    const/16 v1, 0xab

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_6
    const-wide v0, 0x100000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    const/16 v1, 0xac

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_7
    const-wide v0, 0x200000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    const/16 v1, 0xad

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_8
    const-wide v0, 0x400000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    const/16 v1, 0xae

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_9
    const-wide v0, 0x800000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    const/16 v1, 0xaf

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_a
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    const/16 v1, 0xb0

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_b
    const-wide/high16 v0, 0x2000000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    const/16 v1, 0xb1

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_c
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0xb2

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/high16 v0, 0x100000000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/16 v0, 0xb8

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_d
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0xb0000000000000L

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide v4, 0x12001003000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide/16 v4, 0x80

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide v4, 0x104000040000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/32 v0, 0x40000000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x5e

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_d
    const-wide v4, 0x838200000004000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_e
    const-wide/32 v4, 0x6000000

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_f
    const-wide/32 v4, 0x8208000

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_10
    const-wide v4, 0x180000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_11
    const-wide v4, 0xe00400000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_12
    const-wide/32 v0, 0x80000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/16 v0, 0x53

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_e
    const-wide v4, 0x600001030130200L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_13
    const-wide v4, 0x1c0060000000400L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_14
    const-wide/16 v4, 0x100

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_15
    const-wide v4, 0xc00000000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_16
    const-wide v4, 0x1088000000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_17
    const-wide/high16 v4, 0x2000000000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_18
    const-wide/32 v4, 0x800000

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_19
    const-wide v4, 0x4000000000800L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_1a
    const-wide/32 v0, 0x40000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x9e

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_1a
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa1_1(J)I
    .locals 7

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_0
    invoke-direct {p0, v3, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v3, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    return v2

    :sswitch_0
    const-wide v0, 0x800000000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-direct {p0, v2, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_1
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v2, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_2
    const-wide v0, 0x20000002072c80L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    return v0

    :sswitch_3
    const-wide/32 v0, 0x800000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    return v0

    :sswitch_4
    const-wide/32 v0, 0x48200300

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    return v0

    :sswitch_5
    const-wide v0, 0x80000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    const/4 v1, 0x6

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :sswitch_6
    const-wide/32 v0, 0x400000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    return v0

    :sswitch_7
    const-wide v0, 0x10000021008000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    return v0

    :sswitch_8
    const-wide v0, 0x8204081000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    return v0

    :sswitch_9
    const-wide/32 v0, 0x10104000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    return v0

    :sswitch_a
    const-wide v0, 0x400000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    return v0

    :sswitch_b
    const-wide v0, 0x7100000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    return v0

    :sswitch_c
    const-wide v0, 0x800000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    return v0

    :sswitch_d
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    invoke-direct {p0, v2, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x2f -> :sswitch_1
        0x61 -> :sswitch_2
        0x63 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6f -> :sswitch_8
        0x72 -> :sswitch_9
        0x74 -> :sswitch_a
        0x75 -> :sswitch_b
        0x79 -> :sswitch_c
        0x7c -> :sswitch_d
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa1_2(J)I
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    return v5

    :catch_0
    move-exception v0

    return v4

    :pswitch_0
    const-wide/16 v0, 0x10

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    invoke-direct {p0, v4, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_0
    return v5

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa1_3(J)I
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    return v5

    :catch_0
    move-exception v0

    return v4

    :pswitch_0
    const-wide/16 v0, 0x20

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x45

    invoke-direct {p0, v4, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_0
    return v5

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa2_0(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    int-to-char v2, v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    return v2

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v2, 0x2

    return v2

    :pswitch_1
    const-wide/high16 v2, 0x40000000000000L

    and-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/16 v3, 0xb6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    return v2

    :pswitch_2
    const-wide/high16 v2, 0x8000000000000L

    and-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    const/16 v3, 0xb3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    return v2

    :cond_2
    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/16 v3, 0xb4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    return v2

    :pswitch_3
    const-wide/high16 v2, 0x80000000000000L

    and-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const/16 v2, 0xb7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x20000000000000L

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_4
    const-wide v14, 0x4040000000c000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_5
    const-wide v14, 0x80000000000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_6
    const-wide v14, 0x10000000000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_7
    const-wide/16 v14, 0x400

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_8
    const-wide/32 v14, 0x40000

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_9
    const-wide v14, 0xa0a020000000000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_a
    const-wide v14, 0x400008001000000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_b
    const-wide v14, 0x4001006030000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_c
    const-wide v14, 0x240008000200L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_d
    const-wide v14, 0x1000180000000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_e
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    const/16 v3, 0x5c

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    :cond_4
    const-wide v14, 0x30800000000000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_f
    const-wide v14, 0x200201180L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_10
    const-wide v2, 0x400000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const/16 v2, 0x62

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_5
    const-wide v14, 0x102820802800L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_11
    const-wide v14, 0x80000000500000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_12
    const-wide v2, 0x4000000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/16 v3, 0x66

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    :pswitch_13
    const-wide/high16 v2, 0x100000000000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/16 v3, 0x78

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa2_1(JJ)I
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    and-long v0, p3, p1

    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    invoke-direct {p0, v8, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v2

    invoke-direct {p0, v8, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    return v4

    :pswitch_1
    const-wide v2, 0x400400000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/16 v2, 0x300

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/32 v2, 0x10200000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/32 v2, 0x8000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide/32 v2, 0x800000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide v2, 0x1000104000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide v2, 0x200000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide v2, 0x100000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    const/16 v0, 0x34

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_2
    const-wide v2, 0xc82000a000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide/32 v2, 0x4000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    const/16 v0, 0xc

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_3
    const-wide/32 v2, 0x41000480

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/32 v2, 0x2070800

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide v2, 0x2000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_e
    const-wide/32 v2, 0x80000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    return v0

    :pswitch_f
    const-wide/high16 v2, 0x20000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x35

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa3_0(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    int-to-char v2, v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v2

    return v2

    :catch_0
    move-exception v2

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v2, 0x3

    return v2

    :pswitch_1
    const-wide/high16 v2, 0x20000000000000L

    and-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    const/16 v3, 0xb5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v2

    return v2

    :pswitch_2
    const-wide v14, 0x40000000e040400L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_3
    const-wide/32 v14, 0x100000

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_4
    const-wide v14, 0x4000000002000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_5
    const-wide/high16 v2, 0x200000000000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    const/16 v3, 0x79

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    :pswitch_6
    const-wide/16 v2, 0x800

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    const/16 v3, 0x4b

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    :cond_2
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    const/16 v3, 0x4c

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    :cond_3
    const-wide/32 v2, 0x200000

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    const/16 v3, 0x55

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    :cond_4
    const-wide/high16 v2, 0x80000000000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    const/16 v3, 0x77

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    :cond_5
    const-wide v14, 0x1000800800100L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_7
    const-wide v2, 0x1000000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    const/16 v3, 0x64

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    :pswitch_8
    const-wide v14, 0x802000000000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_9
    const-wide v14, 0x10000000000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_a
    const-wide v2, 0x8000000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    const/16 v3, 0x67

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    :cond_6
    const-wide v14, 0x800080080000200L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_b
    const-wide/32 v2, 0x400000

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    const/16 v3, 0x56

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    :pswitch_c
    const-wide/high16 v14, 0x40000000000000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_d
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    const/16 v3, 0x5d

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    :cond_7
    const-wide v14, 0x30000100000000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_e
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    const/16 v3, 0x4e

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    :cond_8
    const-wide v14, 0x200000000000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_f
    const-wide/high16 v2, 0x8000000000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    const/4 v2, 0x3

    const/16 v3, 0x73

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v2

    return v2

    :cond_9
    const-wide/32 v14, 0x1018000

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_10
    const-wide v14, 0x2440200020080L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_11
    const-wide v14, 0x100000000000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    :pswitch_12
    const-wide v14, 0x20000000000L

    const-wide/16 v18, 0x0

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v2

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa3_1(JJ)I
    .locals 9

    const/4 v8, 0x6

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v4, 0x3

    and-long v0, p3, p1

    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    invoke-direct {p0, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v2

    invoke-direct {p0, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    return v4

    :pswitch_1
    const-wide v2, 0x100000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide v2, 0x828080080L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/16 v2, 0x2000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide v2, 0x1000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide v2, 0x8000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    const/16 v0, 0x27

    invoke-direct {p0, v4, v0, v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_2
    const-wide/32 v2, 0x10800000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/32 v2, 0x40008000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/32 v2, 0x10000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    const/16 v2, 0x10

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_3
    const-wide/32 v2, 0x60000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide v2, 0x200000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide v2, 0x2000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x25

    invoke-direct {p0, v4, v0, v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :pswitch_a
    const-wide/32 v2, 0x400400

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/32 v2, 0x1000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide v2, 0x4402004b00L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide/32 v2, 0x200000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_e
    const-wide/32 v2, 0x100000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_f
    const-wide/32 v2, 0x4000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa4_0(JJJJ)I
    .locals 9

    and-long v4, p3, p1

    and-long v0, p7, p5

    or-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v0, 0x4

    return v0

    :pswitch_1
    const-wide v0, 0x30200000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide v0, 0x2800000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/32 v0, 0x1000000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    const/16 v1, 0x58

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_2
    const-wide/high16 v0, 0x800000000000000L

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_3
    const-wide v0, 0x40080000200L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/16 v0, 0x2000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    const/16 v1, 0x4d

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_4
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide v0, 0x480000020000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/16 v0, 0x400

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const/16 v1, 0x4a

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/32 v0, 0x2000000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/16 v0, 0x59

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_5
    const-wide/32 v0, 0x4100000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/32 v0, 0x800000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    const/16 v1, 0x70

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_6
    const-wide v0, 0x100900000180L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide/32 v0, 0x8000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    const/16 v1, 0x4f

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_7
    const-wide/high16 v0, 0x40000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/32 v0, 0x10000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    const/16 v1, 0x50

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_8
    const-wide/32 v0, 0x8000000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    const/16 v1, 0x5b

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_9
    const-wide v0, 0x200000000000L

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    const/16 v1, 0x6d

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_a
    const-wide/high16 v0, 0x400000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/32 v0, 0x40000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    return v0

    :pswitch_e
    const-wide/high16 v0, 0x10000000000000L

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/16 v0, 0x74

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_b
    const-wide/high16 v0, 0x20000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa4_1(JJ)I
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x3

    and-long v0, p3, p1

    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v2

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    return v4

    :pswitch_1
    const-wide v2, 0x200100000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/32 v2, 0x200000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/32 v2, 0x800000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide v2, 0x1040402800L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide v2, 0x4400084700L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x1d

    const/4 v1, 0x6

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_1
    const-wide/32 v2, 0x8080

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide v2, 0x800000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/32 v2, 0x6000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/32 v2, 0x10000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide v2, 0x101000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/32 v2, 0x8000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/32 v2, 0x20000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide/32 v2, 0x40000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa5_0(JJ)I
    .locals 11

    const/4 v1, 0x4

    const/16 v9, 0x1c

    const/4 v8, 0x5

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/4 v1, 0x3

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v8

    :pswitch_1
    const-wide/16 v0, 0x280

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide v0, 0x80000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x6b

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_2
    const-wide v0, 0x400000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/16 v0, 0x6e

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_3
    const-wide v0, 0x40000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/32 v0, 0x800000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/32 v6, 0x100000

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_4

    const/16 v0, 0x54

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_4
    const-wide v6, 0x2000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x65

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_5
    const-wide v0, 0x800000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide v0, 0x10000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/high16 v6, 0x2000000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x71

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/high16 v0, 0x440000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/32 v0, 0x4040000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide v0, 0x80000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide v0, 0x100000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/16 v0, 0x6c

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_5
    const-wide v0, 0x200020000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide/high16 v6, 0x20000000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x75

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_e
    const-wide/16 v0, 0x100

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/16 v0, 0x48

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_6
    const-wide v0, 0x100000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/16 v0, 0x60

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_7
    const-wide v0, 0x820000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa5_1(JJ)I
    .locals 9

    const/4 v8, 0x4

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    const/4 v4, 0x5

    and-long v0, p3, p1

    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    invoke-direct {p0, v8, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v2

    invoke-direct {p0, v8, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    return v4

    :pswitch_1
    const-wide/32 v2, 0x40020000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide v2, 0x400000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    const/16 v0, 0x22

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_2
    const-wide/16 v2, 0x4000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/32 v2, 0x400000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    const/16 v0, 0x16

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_3
    const-wide v2, 0x1000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x24

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    const/16 v0, 0xf

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_4
    const-wide/32 v2, 0x10000400

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide v2, 0x100000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide v2, 0x800040000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    const/16 v0, 0xd

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_5
    const-wide/32 v2, 0x8000080

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide v2, 0x4000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/16 v2, 0x300

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide v2, 0x201000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/16 v2, 0x800

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_6

    const/16 v0, 0xb

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_6
    const-wide/32 v2, 0x6000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/32 v2, 0x80000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_7

    const/16 v0, 0x13

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_7
    const-wide/32 v2, 0x300000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide/32 v2, 0x800000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa6_0(JJ)I
    .locals 11

    const/4 v1, 0x5

    const/16 v9, 0x1c

    const/4 v8, 0x6

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/4 v1, 0x4

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v8

    :pswitch_1
    const-wide v0, 0x800000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide v0, 0x200000080L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide v0, 0x10000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x68

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_2
    const-wide v0, 0x20000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/16 v0, 0x69

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_3
    const-wide v0, 0x40000080000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide v0, 0x800000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide/high16 v0, 0x400000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/16 v6, 0x200

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x49

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/32 v6, 0x800000

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x57

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/32 v0, 0x40000

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/16 v0, 0x52

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_4
    const-wide v0, 0x40000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide/32 v0, 0x20000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/32 v6, 0x4000000

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x5a

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa6_1(JJ)I
    .locals 9

    const/4 v5, 0x5

    const-wide/16 v6, 0x0

    const/4 v4, 0x6

    and-long v0, p3, p1

    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    invoke-direct {p0, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v2

    invoke-direct {p0, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    return v4

    :pswitch_1
    const-wide/16 v2, 0x4000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/32 v2, 0x40000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide v2, 0x800000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x23

    invoke-direct {p0, v4, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x1c

    invoke-direct {p0, v4, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :pswitch_5
    const-wide/32 v2, 0x100000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    const/16 v0, 0x14

    invoke-direct {p0, v4, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_2
    const-wide v2, 0x4000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    const/16 v0, 0x26

    invoke-direct {p0, v4, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_3
    const-wide/32 v2, 0x40080

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/32 v2, 0x6220000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/32 v2, 0x800000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    const/16 v2, 0x9

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_4
    const-wide/16 v2, 0x100

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/16 v2, 0x400

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    const/16 v0, 0xa

    invoke-direct {p0, v4, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_5
    const-wide v2, 0x101000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide v2, 0x200000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/32 v2, 0x8000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x1b

    invoke-direct {p0, v4, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa7_0(JJ)I
    .locals 11

    const/4 v1, 0x6

    const/16 v9, 0x1c

    const/4 v8, 0x7

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/4 v1, 0x5

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v8

    :sswitch_0
    const-wide v0, 0x800000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJ)I

    move-result v0

    return v0

    :sswitch_1
    const-wide/32 v0, 0x20000

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x51

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_2
    const-wide/high16 v0, 0x400000000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/16 v0, 0x7a

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_3
    const-wide v0, 0x40200000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJ)I

    move-result v0

    return v0

    :sswitch_2
    const-wide v0, 0x44000080000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJ)I

    move-result v0

    return v0

    :sswitch_3
    const-wide v6, 0x800000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x6f

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :sswitch_4
    const-wide/16 v6, 0x80

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x47

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x65 -> :sswitch_1
        0x6e -> :sswitch_2
        0x70 -> :sswitch_3
        0x74 -> :sswitch_4
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa7_1(JJ)I
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v5, 0x7

    const/4 v4, 0x6

    and-long v0, p3, p1

    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v2

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    return v5

    :pswitch_1
    const-wide/32 v2, 0x800000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    const/16 v0, 0x17

    invoke-direct {p0, v5, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_2
    const-wide v2, 0x200000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    const/16 v0, 0x21

    invoke-direct {p0, v5, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_3
    const-wide v2, 0x100000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/32 v2, 0x1000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    invoke-direct {p0, v5, v5, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_4
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    const/16 v0, 0xe

    invoke-direct {p0, v5, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :cond_5
    const-wide/32 v2, 0x40040000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/32 v2, 0x200000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x8

    invoke-direct {p0, v5, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/32 v2, 0x20000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x11

    invoke-direct {p0, v5, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/32 v2, 0x6000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa8_0(JJ)I
    .locals 11

    const/4 v1, 0x7

    const/16 v9, 0x1c

    const/16 v8, 0x8

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/4 v1, 0x6

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v8

    :sswitch_0
    const-wide v6, 0x40000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x6a

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :sswitch_1
    const-wide v6, 0x800000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x63

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :sswitch_2
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJ)I

    move-result v0

    return v0

    :sswitch_3
    const-wide v0, 0x200000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJ)I

    move-result v0

    return v0

    :sswitch_4
    const-wide/high16 v0, 0x40000000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x76

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_2
    const-wide v0, 0x80000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJ)I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6f -> :sswitch_3
        0x74 -> :sswitch_4
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa8_1(JJ)I
    .locals 9

    const/4 v8, 0x7

    const-wide/16 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x6

    and-long v0, p3, p1

    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    invoke-direct {p0, v4, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    invoke-direct {p0, v8, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v2

    invoke-direct {p0, v8, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    return v5

    :sswitch_0
    const-wide v2, 0x106000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_1(JJ)I

    move-result v0

    return v0

    :sswitch_1
    const-wide/32 v2, 0x40000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x12

    invoke-direct {p0, v5, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :sswitch_2
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x1e

    invoke-direct {p0, v5, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :sswitch_3
    const-wide/32 v2, 0x200000

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/16 v0, 0x15

    invoke-direct {p0, v5, v0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    return v0

    :sswitch_4
    const-wide/32 v2, 0x1000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_1(JJ)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x6e -> :sswitch_3
        0x76 -> :sswitch_4
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa9_0(JJ)I
    .locals 11

    const/16 v9, 0x1c

    const/16 v1, 0x8

    const/16 v8, 0x9

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/4 v1, 0x7

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v8

    :sswitch_0
    const-wide v6, 0x200000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x61

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :sswitch_1
    const-wide v6, 0x80000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x5f

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :sswitch_2
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa10_0(JJ)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x73 -> :sswitch_1
        0x7a -> :sswitch_2
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa9_1(JJ)I
    .locals 5

    const/16 v4, 0x8

    and-long v0, p3, p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    return v0

    :catch_0
    move-exception v2

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    const/16 v0, 0x9

    return v0

    :sswitch_0
    const-wide/32 v2, 0x1000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa10_1(JJ)I

    move-result v0

    return v0

    :sswitch_1
    const-wide v2, 0x100000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa10_1(JJ)I

    move-result v0

    return v0

    :sswitch_2
    const-wide/32 v2, 0x6000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa10_1(JJ)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x64 -> :sswitch_1
        0x74 -> :sswitch_2
    .end sparse-switch
.end method

.method private jjStartNfaWithStates_0(III)I
    .locals 1

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private jjStartNfaWithStates_1(III)I
    .locals 1

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStartNfa_0(IJJJ)I
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private jjStopAtPos(II)I
    .locals 1

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJJJ)I
    .locals 8

    const/4 v7, 0x4

    const/16 v6, 0x87

    const/4 v5, -0x1

    const/16 v4, 0x1c

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    return v5

    :pswitch_0
    const-wide v0, 0x40000000040000L

    and-long/2addr v0, p6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return v7

    :cond_0
    const-wide/16 v0, 0x4

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide v0, 0x402000000000L

    and-long/2addr v0, p6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x2d

    return v0

    :cond_2
    const-wide v0, 0xfffffffffffff80L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    return v4

    :cond_3
    return v5

    :pswitch_1
    const-wide v0, 0xfffffffbfe7ff80L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :goto_0
    return v4

    :cond_4
    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_5
    const-wide/32 v0, 0x40180000

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    return v4

    :cond_6
    const-wide/16 v0, 0x4

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/16 v0, 0x38

    return v0

    :cond_7
    return v5

    :pswitch_2
    const-wide v0, 0x100004c10000000L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    return v4

    :cond_8
    const-wide v0, 0xeffffb3aff7ff80L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    :goto_1
    return v4

    :cond_9
    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto :goto_1

    :cond_a
    return v5

    :pswitch_3
    const-wide v0, 0x288009020605800L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    return v4

    :cond_b
    const-wide v0, 0xc77ff2b8f97a780L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v4

    :cond_c
    return v5

    :pswitch_4
    const-wide v0, 0x446df2b80960380L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-ne v0, v7, :cond_d

    :goto_2
    return v4

    :cond_d
    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto :goto_2

    :cond_e
    const-wide v0, 0x83120000f01a400L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    return v4

    :cond_f
    return v5

    :pswitch_5
    const-wide v0, 0x22582100100100L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    return v4

    :cond_10
    const-wide v0, 0x444870a84860280L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v4

    :cond_11
    return v5

    :pswitch_6
    const-wide v0, 0x30004840200L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    return v4

    :cond_12
    const-wide v0, 0x444840a80020080L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v4

    :cond_13
    return v5

    :pswitch_7
    const-wide v0, 0x44040a80000000L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v4

    :cond_14
    const-wide v0, 0x400800000020080L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    return v4

    :cond_15
    return v5

    :pswitch_8
    const-wide v0, 0x40040800000000L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    return v4

    :cond_16
    const-wide v0, 0x4000280000000L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v4

    :cond_17
    return v5

    :pswitch_9
    const-wide v0, 0x280000000L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    return v4

    :cond_18
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v4

    :cond_19
    return v5

    :pswitch_a
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v4

    :cond_1a
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 8

    const/4 v7, 0x3

    const/16 v6, 0x36

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x6

    packed-switch p1, :pswitch_data_0

    return v3

    :pswitch_0
    const-wide v0, 0x3000ffffffff80L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    return v2

    :cond_0
    return v3

    :pswitch_1
    const-wide v0, 0x80000000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-wide v0, 0x3000ff7fffff80L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v2

    :cond_2
    return v3

    :pswitch_2
    const-wide v0, 0x30000000001000L    # 8.9002954340369E-308

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const-wide v0, 0xff7fffef80L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v2

    :cond_4
    return v3

    :pswitch_3
    const-wide v0, 0xa000070000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    return v2

    :cond_5
    const-wide v0, 0x5f7ff8ef80L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-ne v0, v7, :cond_6

    :goto_0
    return v2

    :cond_6
    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_7
    return v3

    :pswitch_4
    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_8

    return v2

    :cond_8
    const-wide v0, 0x5f5ffeef80L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v2

    :cond_9
    return v3

    :pswitch_5
    const-wide v0, 0x140048a800L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    return v2

    :cond_a
    const-wide v0, 0x4b5fb64780L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_b

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v2

    :cond_b
    return v3

    :pswitch_6
    const-wide v0, 0x4818100700L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_c

    return v2

    :cond_c
    const-wide v0, 0x347a64080L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-ne v0, v2, :cond_d

    :goto_1
    return v2

    :cond_d
    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto :goto_1

    :cond_e
    return v3

    :pswitch_7
    const-wide v0, 0x200824180L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_f

    return v2

    :cond_f
    const-wide v0, 0x147240000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_10

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v2

    :cond_10
    return v3

    :pswitch_8
    const-wide/32 v0, 0x40240000

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_11

    return v2

    :cond_11
    const-wide v0, 0x107000000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_12

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v2

    :cond_12
    return v3

    :pswitch_9
    const-wide v0, 0x107000000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_13

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v2

    :cond_13
    return v3

    :pswitch_a
    const-wide v0, 0x106000000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_14

    return v2

    :cond_14
    const-wide/32 v0, 0x1000000

    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_15

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    return v2

    :cond_15
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method


# virtual methods
.method CommonTokenAction(Lcom/samsung/javaomp/compiler/Token;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method MoreLexicalActions()V
    .locals 3

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method

.method public ReInit(Lcom/samsung/javaomp/compiler/JavaCharStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lcom/samsung/javaomp/compiler/JavaCharStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->ReInit(Lcom/samsung/javaomp/compiler/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method SkipLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V
    .locals 4

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/javaomp/compiler/JavaParser;->inOMPComment:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/javaomp/compiler/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/javaomp/compiler/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    return-void
.end method

.method TokenLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V
    .locals 7

    const/16 v6, 0xb8

    const/16 v5, 0xb7

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget-object v1, p1, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    sput-boolean v4, Lcom/samsung/javaomp/compiler/JavaParser;->inOMPComment:Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    invoke-virtual {p0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    invoke-virtual {p0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x20

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    invoke-virtual {p0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x8a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x8a

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    sget-boolean v0, Lcom/samsung/javaomp/compiler/JavaParser;->inOMPComment:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x8b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x8b

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    sget-boolean v0, Lcom/samsung/javaomp/compiler/JavaParser;->inOMPComment:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    sget v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    const/16 v0, 0xb9

    iput v0, p1, Lcom/samsung/javaomp/compiler/Token;->kind:I

    move-object v0, p1

    check-cast v0, Lcom/samsung/javaomp/compiler/MyToken;

    iput v5, v0, Lcom/samsung/javaomp/compiler/MyToken;->realKind:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    const-string/jumbo v0, ">"

    :goto_1
    iput-object v0, p1, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    const/16 v0, 0xb9

    iput v0, p1, Lcom/samsung/javaomp/compiler/Token;->kind:I

    move-object v0, p1

    check-cast v0, Lcom/samsung/javaomp/compiler/MyToken;

    iput v6, v0, Lcom/samsung/javaomp/compiler/MyToken;->realKind:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0, v4}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    const-string/jumbo v0, ">"

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x1d -> :sswitch_2
        0x1f -> :sswitch_3
        0x20 -> :sswitch_4
        0x8a -> :sswitch_5
        0x8b -> :sswitch_6
        0xb7 -> :sswitch_7
        0xb8 -> :sswitch_8
    .end sparse-switch
.end method

.method public getNextToken()Lcom/samsung/javaomp/compiler/Token;
    .locals 12

    const/4 v5, 0x0

    const/16 v11, 0x46

    const/4 v6, 0x1

    const v10, 0x7fffffff

    const/4 v7, 0x0

    move v0, v7

    move-object v1, v5

    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->BeginToken()C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    :goto_1
    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_2
    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    if-ne v2, v10, :cond_3

    :goto_3
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getEndLine()I

    move-result v3

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getEndColumn()I

    move-result v4

    :try_start_1
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move v1, v7

    :goto_4
    if-eqz v1, :cond_e

    :goto_5
    new-instance v0, Lcom/samsung/javaomp/compiler/TokenMgrError;

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    iget-char v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_0
    move-exception v0

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjFillToken()Lcom/samsung/javaomp/compiler/Token;

    move-result-object v0

    iput-object v1, v0, Lcom/samsung/javaomp/compiler/Token;->specialToken:Lcom/samsung/javaomp/compiler/Token;

    return-object v0

    :pswitch_0
    iput v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v0

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v3, 0xba

    if-le v2, v3, :cond_1

    const/16 v2, 0xba

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    goto :goto_2

    :pswitch_1
    iput v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v0

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v3, 0x3b

    if-le v2, v3, :cond_1

    const/16 v2, 0x3b

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    goto :goto_2

    :pswitch_2
    iput v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v0

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    if-le v2, v11, :cond_1

    :cond_2
    iput v11, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    goto :goto_2

    :pswitch_3
    iput v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v0

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    if-gt v2, v11, :cond_2

    goto/16 :goto_2

    :cond_3
    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_4

    :goto_6
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoToken:[J

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v2, v2, v3

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v4, v4, 0x3f

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v4

    and-long/2addr v2, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjFillToken()Lcom/samsung/javaomp/compiler/Token;

    move-result-object v0

    iput-object v1, v0, Lcom/samsung/javaomp/compiler/Token;->specialToken:Lcom/samsung/javaomp/compiler/Token;

    invoke-virtual {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->TokenLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    :goto_7
    return-object v0

    :cond_4
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    goto :goto_6

    :cond_5
    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    goto :goto_7

    :cond_6
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoSkip:[J

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v2, v2, v3

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v4, v4, 0x3f

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v4

    and-long/2addr v2, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_9

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoSpecial:[J

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v2, v2, v3

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v4, v4, 0x3f

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v4

    and-long/2addr v2, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjFillToken()Lcom/samsung/javaomp/compiler/Token;

    move-result-object v2

    if-eqz v1, :cond_7

    iput-object v1, v2, Lcom/samsung/javaomp/compiler/Token;->specialToken:Lcom/samsung/javaomp/compiler/Token;

    iput-object v2, v1, Lcom/samsung/javaomp/compiler/Token;->next:Lcom/samsung/javaomp/compiler/Token;

    :cond_7
    move-object v1, v2

    invoke-virtual {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SkipLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V

    :goto_8
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v3

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SkipLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V

    goto :goto_8

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->MoreLexicalActions()V

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    :goto_9
    iput v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    :try_start_2
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v7

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    goto :goto_9

    :catch_1
    move-exception v0

    move v0, v7

    goto/16 :goto_3

    :catch_2
    move-exception v1

    if-le v0, v6, :cond_c

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :goto_a
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v5, 0xa

    if-ne v2, v5, :cond_d

    :cond_b
    add-int/lit8 v3, v3, 0x1

    move-object v5, v1

    move v4, v7

    move v1, v6

    goto/16 :goto_4

    :cond_c
    const-string/jumbo v1, ""

    goto :goto_a

    :cond_d
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v5, 0xd

    if-eq v2, v5, :cond_b

    add-int/lit8 v4, v4, 0x1

    move-object v5, v1

    move v1, v6

    goto/16 :goto_4

    :cond_e
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2, v6}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    if-le v0, v6, :cond_f

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :goto_b
    move-object v5, v0

    goto/16 :goto_5

    :cond_f
    const-string/jumbo v0, ""

    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lcom/samsung/javaomp/compiler/Token;
    .locals 6

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getBeginLine()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getBeginColumn()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getEndLine()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v4}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getEndColumn()I

    move-result v4

    iget v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    invoke-static {v5, v0}, Lcom/samsung/javaomp/compiler/MyToken;->newToken(ILjava/lang/String;)Lcom/samsung/javaomp/compiler/Token;

    move-result-object v0

    iput v1, v0, Lcom/samsung/javaomp/compiler/Token;->beginLine:I

    iput v3, v0, Lcom/samsung/javaomp/compiler/Token;->endLine:I

    iput v2, v0, Lcom/samsung/javaomp/compiler/Token;->beginColumn:I

    iput v4, v0, Lcom/samsung/javaomp/compiler/Token;->endColumn:I

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
