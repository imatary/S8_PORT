.class public Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;
.super Ljava/lang/Object;
.source "SlinkMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoUriInfo"
.end annotation


# instance fields
.field private final captionIndexUri:Landroid/net/Uri;

.field private final captionUri:Landroid/net/Uri;

.field private final optimizedVideoUri:Landroid/net/Uri;

.field private final videoUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetVideoUriInfo.KEY_RESULT_VIDEO_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;->videoUri:Landroid/net/Uri;

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetVideoUriInfo.KEY_RESULT_CAPTION_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;->captionUri:Landroid/net/Uri;

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetVideoUriInfo.KEY_RESULT_CAPTION_INDEX_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;->captionIndexUri:Landroid/net/Uri;

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetVideoUriInfo.KEY_RESULT_OPTIMIZED_VIDEO_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;->optimizedVideoUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$0(Landroid/os/Bundle;)Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;->createVideoUriInfo(Landroid/os/Bundle;)Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoUriInfo(Landroid/os/Bundle;)Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public getCaptionIndexUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;->captionIndexUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCaptionUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;->captionUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getOptimizedVideoUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;->optimizedVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;->videoUri:Landroid/net/Uri;

    return-object v0
.end method
