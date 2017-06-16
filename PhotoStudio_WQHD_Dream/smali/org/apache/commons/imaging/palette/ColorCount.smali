.class Lorg/apache/commons/imaging/palette/ColorCount;
.super Ljava/lang/Object;
.source "ColorCount.java"


# instance fields
.field public final alpha:I

.field public final argb:I

.field public final blue:I

.field public count:I

.field public final green:I

.field public final red:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorCount;->argb:I

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lorg/apache/commons/imaging/palette/ColorCount;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/imaging/palette/ColorCount;

    iget v2, v0, Lorg/apache/commons/imaging/palette/ColorCount;->argb:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorCount;->argb:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/palette/ColorCount;->argb:I

    return v0
.end method
