.class public Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "SmartViewReceiverCmd.java"


# static fields
.field private static final FEATURE_SUPPORT_SINGLE_SMART_VIEW:Z

.field public static final OP_REGISTER_RECEIVER:I = 0x0

.field public static final OP_UNREGISTER_RECEIVER:I = 0x1

.field private static final SMART_VIEW_SLIDESHOW_PLAY:Ljava/lang/String; = "com.samsung.intent.action.START_SMART_VIEW_MULTI_SELECT"

.field private static final TAG:Ljava/lang/String; = "SmartViewReceiverCmd"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mSmartViewReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportSingleSelectionSmartView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->FEATURE_SUPPORT_SINGLE_SMART_VIEW:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mSmartViewReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->startSmartViewPlay(Landroid/content/Intent;)V

    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.intent.action.START_SMART_VIEW_MULTI_SELECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mSmartViewReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startSmartViewPlay(Landroid/content/Intent;)V
    .locals 13

    const-string/jumbo v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "SmartViewReceiverCmd"

    const-string/jumbo v9, "startSmartViewMultiplePlay"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "android.intent.extra.STREAM"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    if-eqz v5, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startSmartViewSlideshow(Ljava/util/LinkedHashMap;I)V

    goto :goto_0

    :cond_4
    sget-boolean v8, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->FEATURE_SUPPORT_SINGLE_SMART_VIEW:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "SmartViewReceiverCmd"

    const-string/jumbo v9, "startSmartViewSinglePlay"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsRegisteredSmartViewMediator()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/ShareList;->getSharePath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v9

    new-instance v10, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    const-string/jumbo v11, "SINGLE_SELECTION_SMART_VIEW"

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {}, Lcom/sec/samsung/gallery/util/ShareList;->getSharePath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v12

    invoke-direct {v10, v11, v8, v12}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;-><init>(Ljava/lang/String;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/data/Path;)V

    invoke-virtual {v9, v10}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v8

    const-string/jumbo v9, "START_DETAILVIEW_VIA_SMARTVIEW"

    invoke-virtual {v8, v9}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mSmartViewReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mSmartViewReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mSmartViewReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "SmartViewReceiverCmd"

    const-string/jumbo v2, "catch IllegalArgumentException and ignore it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SmartViewReceiverCmd"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mSmartViewReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mSmartViewReceiver:Landroid/content/BroadcastReceiver;

    throw v1
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mContext:Landroid/content/Context;

    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->registerReceiver(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->unregisterReceiver(Landroid/content/Context;)V

    goto :goto_0
.end method
