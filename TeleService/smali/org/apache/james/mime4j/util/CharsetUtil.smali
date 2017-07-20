.class public Lorg/apache/james/mime4j/util/CharsetUtil;
.super Ljava/lang/Object;
.source "CharsetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    }
.end annotation


# static fields
.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field private static JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static charsetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/util/CharsetUtil$Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static decodingSupported:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static encodingSupported:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-class v7, Lorg/apache/james/mime4j/util/CharsetUtil;

    invoke-static {v7}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v7

    sput-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/james/mime4j/Log;

    const/16 v7, 0x93

    new-array v7, v7, [Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO8859_1"

    const-string/jumbo v10, "ISO-8859-1"

    const/16 v11, 0xd

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ISO_8859-1:1987"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "iso-ir-100"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO_8859-1"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "latin1"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "l1"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "IBM819"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "CP819"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const-string/jumbo v12, "csISOLatin1"

    const/4 v13, 0x7

    aput-object v12, v11, v13

    const-string/jumbo v12, "8859_1"

    const/16 v13, 0x8

    aput-object v12, v11, v13

    const-string/jumbo v12, "819"

    const/16 v13, 0x9

    aput-object v12, v11, v13

    const-string/jumbo v12, "IBM-819"

    const/16 v13, 0xa

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO8859-1"

    const/16 v13, 0xb

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO_8859_1"

    const/16 v13, 0xc

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO8859_2"

    const-string/jumbo v10, "ISO-8859-2"

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ISO_8859-2:1987"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "iso-ir-101"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO_8859-2"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "latin2"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "l2"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "csISOLatin2"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "8859_2"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const-string/jumbo v12, "iso8859_2"

    const/4 v13, 0x7

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO8859_3"

    const-string/jumbo v10, "ISO-8859-3"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ISO_8859-3:1988"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "iso-ir-109"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO_8859-3"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "latin3"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "l3"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "csISOLatin3"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "8859_3"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/4 v9, 0x2

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO8859_4"

    const-string/jumbo v10, "ISO-8859-4"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ISO_8859-4:1988"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "iso-ir-110"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO_8859-4"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "latin4"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "l4"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "csISOLatin4"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "8859_4"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/4 v9, 0x3

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO8859_5"

    const-string/jumbo v10, "ISO-8859-5"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ISO_8859-5:1988"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "iso-ir-144"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO_8859-5"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "cyrillic"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "csISOLatinCyrillic"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "8859_5"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/4 v9, 0x4

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO8859_6"

    const-string/jumbo v10, "ISO-8859-6"

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ISO_8859-6:1987"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "iso-ir-127"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO_8859-6"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "ECMA-114"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "ASMO-708"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "arabic"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "csISOLatinArabic"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const-string/jumbo v12, "8859_6"

    const/4 v13, 0x7

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/4 v9, 0x5

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO8859_7"

    const-string/jumbo v10, "ISO-8859-7"

    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ISO_8859-7:1987"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "iso-ir-126"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO_8859-7"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "ELOT_928"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "ECMA-118"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "greek"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "greek8"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const-string/jumbo v12, "csISOLatinGreek"

    const/4 v13, 0x7

    aput-object v12, v11, v13

    const-string/jumbo v12, "8859_7"

    const/16 v13, 0x8

    aput-object v12, v11, v13

    const-string/jumbo v12, "sun_eu_greek"

    const/16 v13, 0x9

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/4 v9, 0x6

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO8859_8"

    const-string/jumbo v10, "ISO-8859-8"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ISO_8859-8:1988"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "iso-ir-138"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO_8859-8"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "hebrew"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "csISOLatinHebrew"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "8859_8"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/4 v9, 0x7

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO8859_9"

    const-string/jumbo v10, "ISO-8859-9"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ISO_8859-9:1989"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "iso-ir-148"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO_8859-9"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "latin5"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "l5"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "csISOLatin5"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "8859_9"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x8

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO8859_13"

    const-string/jumbo v10, "ISO-8859-13"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x9

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO8859_15"

    const-string/jumbo v10, "ISO-8859-15"

    const/16 v11, 0xe

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ISO_8859-15"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "Latin-9"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "8859_15"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "csISOlatin9"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "IBM923"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "cp923"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "923"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const-string/jumbo v12, "L9"

    const/4 v13, 0x7

    aput-object v12, v11, v13

    const-string/jumbo v12, "IBM-923"

    const/16 v13, 0x8

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO8859-15"

    const/16 v13, 0x9

    aput-object v12, v11, v13

    const-string/jumbo v12, "LATIN9"

    const/16 v13, 0xa

    aput-object v12, v11, v13

    const-string/jumbo v12, "LATIN0"

    const/16 v13, 0xb

    aput-object v12, v11, v13

    const-string/jumbo v12, "csISOlatin0"

    const/16 v13, 0xc

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO8859_15_FDIS"

    const/16 v13, 0xd

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0xa

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "KOI8_R"

    const-string/jumbo v10, "KOI8-R"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "csKOI8R"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "koi8"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0xb

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ASCII"

    const-string/jumbo v10, "US-ASCII"

    const/16 v11, 0xc

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ANSI_X3.4-1968"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "iso-ir-6"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ANSI_X3.4-1986"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO_646.irv:1991"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO646-US"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "us"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "IBM367"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const-string/jumbo v12, "cp367"

    const/4 v13, 0x7

    aput-object v12, v11, v13

    const-string/jumbo v12, "csASCII"

    const/16 v13, 0x8

    aput-object v12, v11, v13

    const-string/jumbo v12, "ascii7"

    const/16 v13, 0x9

    aput-object v12, v11, v13

    const-string/jumbo v12, "646"

    const/16 v13, 0xa

    aput-object v12, v11, v13

    const-string/jumbo v12, "iso_646.irv:1983"

    const/16 v13, 0xb

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0xc

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "UTF8"

    const-string/jumbo v10, "UTF-8"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0xd

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "UTF-16"

    const-string/jumbo v10, "UTF-16"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "UTF_16"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0xe

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "UnicodeBigUnmarked"

    const-string/jumbo v10, "UTF-16BE"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "X-UTF-16BE"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "UTF_16BE"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO-10646-UCS-2"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0xf

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "UnicodeLittleUnmarked"

    const-string/jumbo v10, "UTF-16LE"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "UTF_16LE"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "X-UTF-16LE"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x10

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Big5"

    const-string/jumbo v10, "Big5"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "csBig5"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "CN-Big5"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "BIG-FIVE"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "BIGFIVE"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x11

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Big5_HKSCS"

    const-string/jumbo v10, "Big5-HKSCS"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "big5hkscs"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x12

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "EUC_JP"

    const-string/jumbo v10, "EUC-JP"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "csEUCPkdFmtJapanese"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "Extended_UNIX_Code_Packed_Format_for_Japanese"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "eucjis"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "x-eucjp"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "eucjp"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "x-euc-jp"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x13

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "EUC_KR"

    const-string/jumbo v10, "EUC-KR"

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "csEUCKR"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "ksc5601"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "5601"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "ksc5601_1987"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "ksc_5601"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "ksc5601-1987"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "ks_c_5601-1987"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const-string/jumbo v12, "euckr"

    const/4 v13, 0x7

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x14

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "GB18030"

    const-string/jumbo v10, "GB18030"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "gb18030-2000"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x15

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "EUC_CN"

    const-string/jumbo v10, "GB2312"

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "x-EUC-CN"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csGB2312"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "euccn"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "euc-cn"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "gb2312-80"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "gb2312-1980"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "CN-GB"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const-string/jumbo v12, "CN-GB-ISOIR165"

    const/4 v13, 0x7

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x16

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "GBK"

    const-string/jumbo v10, "windows-936"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "CP936"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "MS936"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ms_936"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "x-mswin-936"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x17

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp037"

    const-string/jumbo v10, "IBM037"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ebcdic-cp-us"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-cp-ca"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-cp-wt"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-cp-nl"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM037"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x18

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp273"

    const-string/jumbo v10, "IBM273"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "csIBM273"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x19

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp277"

    const-string/jumbo v10, "IBM277"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "EBCDIC-CP-DK"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "EBCDIC-CP-NO"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM277"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x1a

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp278"

    const-string/jumbo v10, "IBM278"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "CP278"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-cp-fi"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-cp-se"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM278"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x1b

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp280"

    const-string/jumbo v10, "IBM280"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ebcdic-cp-it"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM280"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x1c

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp284"

    const-string/jumbo v10, "IBM284"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ebcdic-cp-es"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM284"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x1d

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp285"

    const-string/jumbo v10, "IBM285"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ebcdic-cp-gb"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM285"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x1e

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp297"

    const-string/jumbo v10, "IBM297"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ebcdic-cp-fr"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM297"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x1f

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp420"

    const-string/jumbo v10, "IBM420"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ebcdic-cp-ar1"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM420"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x20

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp424"

    const-string/jumbo v10, "IBM424"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ebcdic-cp-he"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM424"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x21

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp437"

    const-string/jumbo v10, "IBM437"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "437"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csPC8CodePage437"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x22

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp500"

    const-string/jumbo v10, "IBM500"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ebcdic-cp-be"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-cp-ch"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM500"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x23

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp775"

    const-string/jumbo v10, "IBM775"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "csPC775Baltic"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x24

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp838"

    const-string/jumbo v10, "IBM-Thai"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x25

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp850"

    const-string/jumbo v10, "IBM850"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "850"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csPC850Multilingual"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x26

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp852"

    const-string/jumbo v10, "IBM852"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "852"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csPCp852"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x27

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp855"

    const-string/jumbo v10, "IBM855"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "855"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM855"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x28

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp857"

    const-string/jumbo v10, "IBM857"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "857"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM857"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x29

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp858"

    const-string/jumbo v10, "IBM00858"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "CCSID00858"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "CP00858"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "PC-Multilingual-850+euro"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x2a

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp860"

    const-string/jumbo v10, "IBM860"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "860"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM860"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x2b

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp861"

    const-string/jumbo v10, "IBM861"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "861"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "cp-is"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM861"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x2c

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp862"

    const-string/jumbo v10, "IBM862"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "862"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csPC862LatinHebrew"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x2d

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp863"

    const-string/jumbo v10, "IBM863"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "863"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM863"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x2e

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp864"

    const-string/jumbo v10, "IBM864"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "cp864"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM864"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x2f

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp865"

    const-string/jumbo v10, "IBM865"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "865"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM865"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x30

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp866"

    const-string/jumbo v10, "IBM866"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "866"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM866"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x31

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp868"

    const-string/jumbo v10, "IBM868"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "cp-ar"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM868"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x32

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp869"

    const-string/jumbo v10, "IBM869"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "cp-gr"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM869"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x33

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp870"

    const-string/jumbo v10, "IBM870"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ebcdic-cp-roece"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-cp-yu"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM870"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x34

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp871"

    const-string/jumbo v10, "IBM871"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ebcdic-cp-is"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM871"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x35

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp918"

    const-string/jumbo v10, "IBM918"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ebcdic-cp-ar2"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csIBM918"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x36

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1026"

    const-string/jumbo v10, "IBM1026"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "csIBM1026"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x37

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1047"

    const-string/jumbo v10, "IBM1047"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "IBM-1047"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x38

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1140"

    const-string/jumbo v10, "IBM01140"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "CCSID01140"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "CP01140"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-us-37+euro"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x39

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1141"

    const-string/jumbo v10, "IBM01141"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "CCSID01141"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "CP01141"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-de-273+euro"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x3a

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1142"

    const-string/jumbo v10, "IBM01142"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "CCSID01142"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "CP01142"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-dk-277+euro"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-no-277+euro"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x3b

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1143"

    const-string/jumbo v10, "IBM01143"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "CCSID01143"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "CP01143"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-fi-278+euro"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-se-278+euro"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x3c

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1144"

    const-string/jumbo v10, "IBM01144"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "CCSID01144"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "CP01144"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-it-280+euro"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x3d

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1145"

    const-string/jumbo v10, "IBM01145"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "CCSID01145"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "CP01145"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-es-284+euro"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x3e

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1146"

    const-string/jumbo v10, "IBM01146"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "CCSID01146"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "CP01146"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-gb-285+euro"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x3f

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1147"

    const-string/jumbo v10, "IBM01147"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "CCSID01147"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "CP01147"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-fr-297+euro"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x40

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1148"

    const-string/jumbo v10, "IBM01148"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "CCSID01148"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "CP01148"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-international-500+euro"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x41

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1149"

    const-string/jumbo v10, "IBM01149"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "CCSID01149"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "CP01149"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ebcdic-is-871+euro"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x42

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1250"

    const-string/jumbo v10, "windows-1250"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x43

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1251"

    const-string/jumbo v10, "windows-1251"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x44

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1252"

    const-string/jumbo v10, "windows-1252"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x45

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1253"

    const-string/jumbo v10, "windows-1253"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x46

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1254"

    const-string/jumbo v10, "windows-1254"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x47

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1255"

    const-string/jumbo v10, "windows-1255"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x48

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1256"

    const-string/jumbo v10, "windows-1256"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x49

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1257"

    const-string/jumbo v10, "windows-1257"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x4a

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1258"

    const-string/jumbo v10, "windows-1258"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x4b

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO2022CN"

    const-string/jumbo v10, "ISO-2022-CN"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x4c

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO2022JP"

    const-string/jumbo v10, "ISO-2022-JP"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "csISO2022JP"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "JIS"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "jis_encoding"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "csjisencoding"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x4d

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO2022KR"

    const-string/jumbo v10, "ISO-2022-KR"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "csISO2022KR"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x4e

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "JIS_X0201"

    const-string/jumbo v10, "JIS_X0201"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "X0201"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "JIS0201"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "csHalfWidthKatakana"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x4f

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "JIS_X0212-1990"

    const-string/jumbo v10, "JIS_X0212-1990"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "iso-ir-159"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "x0212"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "JIS0212"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "csISO159JISX02121990"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x50

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "JIS_C6626-1983"

    const-string/jumbo v10, "JIS_C6626-1983"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "x-JIS0208"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "JIS0208"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "csISO87JISX0208"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "x0208"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "JIS_X0208-1983"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "iso-ir-87"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x51

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "SJIS"

    const-string/jumbo v10, "Shift_JIS"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "MS_Kanji"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csShiftJIS"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "shift-jis"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "x-sjis"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "pck"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x52

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "TIS620"

    const-string/jumbo v10, "TIS-620"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x53

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MS932"

    const-string/jumbo v10, "Windows-31J"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "windows-932"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "csWindows31J"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "x-ms-cp932"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x54

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "EUC_TW"

    const-string/jumbo v10, "EUC-TW"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "x-EUC-TW"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "cns11643"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "euctw"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x55

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "x-Johab"

    const-string/jumbo v10, "johab"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "johab"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "cp1361"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "ms1361"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "ksc5601-1992"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "ksc5601_1992"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x56

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MS950_HKSCS"

    const-string/jumbo v10, ""

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x57

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MS874"

    const-string/jumbo v10, "windows-874"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "cp874"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x58

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MS949"

    const-string/jumbo v10, "windows-949"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "windows949"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "ms_949"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "x-windows-949"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x59

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MS950"

    const-string/jumbo v10, "windows-950"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "x-windows-950"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x5a

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp737"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x5b

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp856"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x5c

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp875"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x5d

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp921"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x5e

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp922"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x5f

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp930"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x60

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp933"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x61

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp935"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x62

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp937"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x63

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp939"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x64

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp942"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x65

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp942C"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x66

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp943"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x67

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp943C"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x68

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp948"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x69

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp949"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x6a

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp949C"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x6b

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp950"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x6c

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp964"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x6d

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp970"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x6e

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1006"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x6f

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1025"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x70

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1046"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x71

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1097"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x72

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1098"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x73

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1112"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x74

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1122"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x75

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1123"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x76

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1124"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x77

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1381"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x78

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp1383"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x79

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Cp33722"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x7a

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "Big5_Solaris"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x7b

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "EUC_JP_LINUX"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x7c

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "EUC_JP_Solaris"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x7d

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISCII91"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "x-ISCII91"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "iscii"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x7e

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO2022_CN_CNS"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x7f

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "ISO2022_CN_GB"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x80

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "x-iso-8859-11"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x81

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "JISAutoDetect"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x82

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacArabic"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x83

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacCentralEurope"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x84

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacCroatian"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x85

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacCyrillic"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x86

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacDingbat"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x87

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacGreek"

    const-string/jumbo v10, "MacGreek"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x88

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacHebrew"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x89

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacIceland"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x8a

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacRoman"

    const-string/jumbo v10, "MacRoman"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "Macintosh"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "MAC"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "csMacintosh"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x8b

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacRomania"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x8c

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacSymbol"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x8d

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacThai"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x8e

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacTurkish"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x8f

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "MacUkraine"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x90

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "UnicodeBig"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x91

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v9, "UnicodeLittle"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)V

    const/16 v9, 0x92

    aput-object v8, v7, v9

    sput-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const/4 v7, 0x0

    sput-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    const/4 v7, 0x0

    sput-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    const/4 v7, 0x0

    sput-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    sput-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    sput-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    const/4 v7, 0x5

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    const/4 v4, 0x0

    :goto_0
    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    array-length v7, v7

    if-ge v4, v7, :cond_0

    :try_start_0
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v7, v7, v4

    invoke-static {v7}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->-get1(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    sget-object v8, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v8, v8, v4

    invoke-static {v8}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->-get1(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    const-string/jumbo v7, "dummy"

    sget-object v8, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v8, v8, v4

    invoke-static {v8}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->-get1(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    sget-object v8, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v8, v8, v4

    invoke-static {v8}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->-get1(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    :goto_3
    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    array-length v7, v7

    if-ge v4, v7, :cond_3

    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v0, v7, v4

    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->-get1(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->-get2(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->-get2(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->-get0(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v5, 0x0

    :goto_4
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->-get0(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v5, v7, :cond_2

    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->-get0(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Character sets which support decoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/james/mime4j/Log;->debug(Ljava/lang/Object;)V

    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Character sets which support encoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/james/mime4j/Log;->debug(Ljava/lang/Object;)V

    :cond_4
    const-string/jumbo v7, "US-ASCII"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    sput-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    const-string/jumbo v7, "ISO-8859-1"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    sput-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string/jumbo v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    sput-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    return-void

    :catch_0
    move-exception v3

    goto/16 :goto_2

    :catch_1
    move-exception v2

    goto/16 :goto_2

    :catch_2
    move-exception v3

    goto/16 :goto_1

    :catch_3
    move-exception v2

    goto/16 :goto_1

    nop

    :array_0
    .array-data 1
        0x64t
        0x75t
        0x6dt
        0x6dt
        0x79t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDecodingSupported(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWhitespace(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWhitespace(Ljava/lang/String;)Z
    .locals 4

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "String may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static toJavaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->-get1(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v3
.end method

.method public static toMimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->-get2(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v3
.end method
