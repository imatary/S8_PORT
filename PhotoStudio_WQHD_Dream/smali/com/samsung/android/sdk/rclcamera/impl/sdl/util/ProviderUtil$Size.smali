.class public Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;
.super Ljava/lang/Object;
.source "ProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->width:I

    iput p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->height:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/seccamera/SecCamera$Size;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->width:I

    iget v0, p1, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->height:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->width:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->height:I

    return v0
.end method

.method public static buildListFromCameraSizes(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/seccamera/SecCamera$Size;

    new-instance v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;

    invoke-direct {v3, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;-><init>(Lcom/sec/android/seccamera/SecCamera$Size;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static stringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;",
            ">;"
        }
    .end annotation

    const-string v3, ","

    invoke-static {p0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    new-instance v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public area()J
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->width:I

    int-to-long v0, v0

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->height:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public aspectRatio()F
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;

    iget v2, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->width:I

    iget v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->height:I

    iget v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public height()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->height:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->width:I

    return v0
.end method
