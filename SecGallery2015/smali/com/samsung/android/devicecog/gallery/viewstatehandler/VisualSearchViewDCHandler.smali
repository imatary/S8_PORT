.class public Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;
.super Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
.source "VisualSearchViewDCHandler.java"


# static fields
.field private static final CONTENT_TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static SELECTED_STATE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "image"

    const-string/jumbo v2, "image"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "video"

    const-string/jumbo v2, "video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "360image"

    const-string/jumbo v2, "360\u00b0 image"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "360video"

    const-string/jumbo v2, "360\u00b0 video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "burstshot"

    const-string/jumbo v2, "Burst shot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "panorama"

    const-string/jumbo v2, "Panorama"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "selectivefocus"

    const-string/jumbo v2, "Selective focus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "selfie"

    const-string/jumbo v2, "Selfie"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "animatedgif"

    const-string/jumbo v2, "Animated GIF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "virtualshot"

    const-string/jumbo v2, "Virtual shot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "dualcamera"

    const-string/jumbo v2, "Dual Camera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "soundandshot"

    const-string/jumbo v2, "Sound & shot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "surroundshot"

    const-string/jumbo v2, "Surround shot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "slowmotion"

    const-string/jumbo v2, "Slow motion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "hyperlapse"

    const-string/jumbo v2, "Hyperlapse"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "fastmotion"

    const-string/jumbo v2, "Fast motion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "videocollage"

    const-string/jumbo v2, "Video collage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "image"

    const v2, 0x7f0a01fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "video"

    const v2, 0x7f0a04bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "360image"

    const v2, 0x7f0a01fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "360video"

    const v2, 0x7f0a04bd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "burstshot"

    const v2, 0x7f0a006a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "panorama"

    const v2, 0x7f0a031c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "selectivefocus"

    const v2, 0x7f0a03b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "selfie"

    const v2, 0x7f0a03b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "animatedgif"

    const v2, 0x7f0a004c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "virtualshot"

    const v2, 0x7f0a04d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "dualcamera"

    const v2, 0x7f0a014c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "soundandshot"

    const v2, 0x7f0a0403

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "surroundshot"

    const v2, 0x7f0a043a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "slowmotion"

    const v2, 0x7f0a03f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "hyperlapse"

    const v2, 0x7f0a01fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "fastmotion"

    const v2, 0x7f0a01a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "videocollage"

    const v2, 0x7f0a009b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SearchEmptySelectedView"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "SearchSelectedView"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->SELECTED_STATE:[Ljava/lang/String;

    return-void
.end method

.method private changeContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "all"

    :cond_0
    return-object v0
.end method

.method private checkTimeInfo([J)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    aget-wide v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getCHObject(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/CHObject;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getCHObjects()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getCHObjects()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private getCHObjectType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getCHObjectType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getCHObjectType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCHValue(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/CHObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "VisualSearchViewDCH"

    const-string/jumbo v4, "there is a no info in a CH Object"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getKeywordContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->CONTENT_TYPE_NAME:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSearchKeyword(Ljava/util/List;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v10, 0x0

    :goto_0
    return-object v10

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->getParamName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->getSlotValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v10, :pswitch_data_0

    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    const-string/jumbo v11, "location"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v10, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v11, "poi"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v11, "title"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v10, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v11, "tag"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v10, 0x3

    goto :goto_2

    :sswitch_4
    const-string/jumbo v11, "searchContentType"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v10, 0x4

    goto :goto_2

    :sswitch_5
    const-string/jumbo v11, "country"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v10, 0x5

    goto :goto_2

    :sswitch_6
    const-string/jumbo v11, "time"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v10, 0x6

    goto :goto_2

    :pswitch_0
    invoke-virtual {p2, v5}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setLocation(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {p2, v5}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setPoi(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {p2, v5}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setTitle(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    const-string/jumbo v10, "tagType"

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->getCHObjectType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->getCHObject(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->getCHValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {p2, v8}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setTagInfo(Ljava/lang/String;)V

    :cond_3
    :goto_4
    invoke-virtual {p2, v5}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setTag(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v10, "VisualSearchViewDCH"

    const-string/jumbo v11, "there is a no CH object"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_4
    invoke-direct {p0, v5}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->getKeywordContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setKeywordContentType(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->changeContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_5
    const-string/jumbo v10, "countryCode"

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->getCHObjectType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->getCHObject(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->getCHValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v0}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setCountryCode(Ljava/lang/String;)V

    :cond_5
    :goto_5
    invoke-virtual {p2, v5}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string/jumbo v10, "VisualSearchViewDCH"

    const-string/jumbo v11, "there is a no CH object"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_6
    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->getCHObject(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->getTimeInfo(Ljava/util/List;)[J

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->checkTimeInfo([J)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p2, v5}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setTime(Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setTimeInfo([J)V

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v10, "VisualSearchViewDCH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "paramValue: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b2f0375 -> :sswitch_4
        0x1b24a -> :sswitch_1
        0x1bf9a -> :sswitch_3
        0x3652cd -> :sswitch_6
        0x6942258 -> :sswitch_2
        0x39175796 -> :sswitch_5
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getTimeInfo(Ljava/util/List;)[J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/CHObject;",
            ">;)[J"
        }
    .end annotation

    const/4 v4, 0x2

    new-array v3, v4, [J

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHType()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v6, "timeFrom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "timeTo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v1

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    :cond_1
    return-object v3

    :pswitch_1
    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bd84fe9 -> :sswitch_0
        -0x341321d8 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleFoldOperation(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "CardName"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "ordinal"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->checkValidOrdinalParam(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v9

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v7

    sget v8, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SEARCH_CARD_FOLD_OPERATION:I

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0a05ba

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v7, p1, v8, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1
.end method

.method private handleSearchResults(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtendRuleTimeOut(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mObserver:Ljava/util/Observer;

    check-cast v4, Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    invoke-direct {v4}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;-><init>()V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getSearchKeywordInfo()Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->getSearchKeyword(Ljava/util/List;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLastQueryText(Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v3, v1, v6

    const/4 v4, 0x1

    aput-object v0, v1, v4

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_KEYWORD_SUBMITTED:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0a051c

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method


# virtual methods
.method protected createDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->cancel(Z)Z

    :cond_0
    new-instance v1, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    invoke-virtual {v0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->setSelectionListener(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V

    return-void
.end method

.method public getScreenStateId()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "SearchSelectedView"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "SearchEmptySelectedView"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SearchViewResult"

    goto :goto_0
.end method

.method public getSelectedStateArray()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->SELECTED_STATE:[Ljava/lang/String;

    return-object v0
.end method

.method public logDCEnterSelectionMode(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->ENTER:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    invoke-static {p1, v0}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    return-void
.end method

.method public logDCExitSelectionMode(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SearchSelectedView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SearchEmptySelectedView"

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "SearchEmptySelectedView"

    :cond_0
    const-string/jumbo v0, "SearchViewResult"

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startCommand(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "VisualSearchViewDCH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BixbyGallery : stateId is wrong, stateId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateId is wrong, stateId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string/jumbo v1, "SearchViewResult"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "SearchEmptySelectedView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "SearchSelectedView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "DetailView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "ShareViaMessage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "ShareChooserPopUp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "CrossShare"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v1, "SuggestedWordsHistoryView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v1, "ClearSearchHistory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v1, "DeleteKeyword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v1, "ScrollUp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v1, "ScrollDown"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v1, "ScrollToTop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v1, "ScrollToEnd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v1, "CardFold"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v1, "CardUnfold"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "PeopleName"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->handleSearchResults(Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->enterSelectedView(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->handleSelectedView(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->handleStartDetailView(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SHARE_VIA_MESSAGE:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->handleShareChooserPopup(Ljava/util/List;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->handleShare(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_7
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SUGGEST_KEYWORDS_HISTORY:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_8
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CLEAR_SEARCH_HISTORY:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_9
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_DELETE_KEYWORDS:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_a
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->handleFoldOperation(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_c
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SEARCH_PEOPLE_NAME:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7506b650 -> :sswitch_5
        -0x733f3461 -> :sswitch_6
        -0x6ad9b3ed -> :sswitch_7
        -0x5f5a2296 -> :sswitch_f
        -0x3cb0e226 -> :sswitch_10
        -0x315d7b61 -> :sswitch_8
        -0x22d9ccf6 -> :sswitch_0
        -0x2217ca8d -> :sswitch_d
        -0x22179213 -> :sswitch_c
        -0x167bea38 -> :sswitch_2
        -0x141e2998 -> :sswitch_a
        -0xd204662 -> :sswitch_9
        0x3565751 -> :sswitch_e
        0x390e12b6 -> :sswitch_3
        0x3f8ee0e5 -> :sswitch_1
        0x486c1d38 -> :sswitch_4
        0x7abe2d2f -> :sswitch_b
    .end sparse-switch

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
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public startParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 12

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenStates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return-void

    :sswitch_0
    const-string/jumbo v10, "SearchView"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v6, v7

    goto :goto_0

    :sswitch_1
    const-string/jumbo v10, "SearchViewResult"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v6, v8

    goto :goto_0

    :sswitch_2
    const-string/jumbo v10, "SearchSelectedView"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v6, v9

    goto :goto_0

    :pswitch_1
    const-string/jumbo v6, "VisualSearchViewDCH"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BixbyGallery : startParamFilling() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;-><init>()V

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getSearchKeywordInfo()Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParameters()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->getSearchKeyword(Ljava/util/List;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLastQueryText(Ljava/lang/String;)V

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v5, v2, v7

    aput-object v0, v2, v8

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v6

    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_KEYWORD_SUBMITTED:I

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x22d9ccf6 -> :sswitch_1
        -0x167bea38 -> :sswitch_2
        0x4c79dc8d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
