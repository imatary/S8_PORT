.class public abstract Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.super Ljava/lang/Object;
.source "FieldType.java"


# static fields
.field public static final ANY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

.field public static final ASCII_OR_BYTE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASCII_OR_RATIONAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

.field public static final BYTE_OR_SHORT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOUBLE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

.field public static final FLOAT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

.field public static final IFD:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

.field public static final LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

.field public static final LONG_OR_IFD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_OR_SHORT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

.field public static final SBYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

.field public static final SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

.field public static final SHORT_OR_LONG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORT_OR_LONG_OR_RATIONAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORT_OR_RATIONAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

.field public static final SRATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

.field public static final SSHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

.field public static final UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;


# instance fields
.field private final elementSize:I

.field private final name:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    const-string v1, "Byte"

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    const-string v1, "ASCII"

    invoke-direct {v0, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    const-string v1, "Short"

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const-string v1, "Long"

    invoke-direct {v0, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    const/4 v1, 0x5

    const-string v2, "Rational"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    const/4 v1, 0x6

    const-string v2, "SByte"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SBYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    const/4 v1, 0x7

    const-string v2, "Undefined"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    const/16 v1, 0x8

    const-string v2, "SShort"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SSHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v1, 0x9

    const-string v2, "SLong"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SLONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    const/16 v1, 0xa

    const-string v2, "SRational"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SRATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

    const/16 v1, 0xb

    const-string v2, "Float"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->FLOAT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

    const/16 v1, 0xc

    const-string v2, "Double"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->DOUBLE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v1, 0xd

    const-string v2, "IFD"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->IFD:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v0, 0xd

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SBYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SSHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SLONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SRATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->FLOAT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->DOUBLE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->IFD:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ANY:Ljava/util/List;

    new-array v0, v4, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT_OR_LONG:Ljava/util/List;

    new-array v0, v4, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT_OR_RATIONAL:Ljava/util/List;

    new-array v0, v6, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT_OR_LONG_OR_RATIONAL:Ljava/util/List;

    new-array v0, v4, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG_OR_SHORT:Ljava/util/List;

    new-array v0, v4, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE_OR_SHORT:Ljava/util/List;

    new-array v0, v4, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->IFD:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG_OR_IFD:Ljava/util/List;

    new-array v0, v4, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII_OR_RATIONAL:Ljava/util/List;

    new-array v0, v4, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII_OR_BYTE:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->type:I

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->name:Ljava/lang/String;

    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->elementSize:I

    return-void
.end method

.method public static getFieldType(I)Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ANY:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getType()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v0

    :cond_1
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is unsupported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->elementSize:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->type:I

    return v0
.end method

.method public abstract getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
.end method

.method public abstract writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation
.end method
