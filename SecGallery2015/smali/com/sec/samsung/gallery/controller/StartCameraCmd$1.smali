.class synthetic Lcom/sec/samsung/gallery/controller/StartCameraCmd$1;
.super Ljava/lang/Object;
.source "StartCameraCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/StartCameraCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$samsung$gallery$core$MediaType$MediaFilterType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->values()[Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCameraCmd$1;->$SwitchMap$com$sec$samsung$gallery$core$MediaType$MediaFilterType:[I

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/controller/StartCameraCmd$1;->$SwitchMap$com$sec$samsung$gallery$core$MediaType$MediaFilterType:[I

    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
