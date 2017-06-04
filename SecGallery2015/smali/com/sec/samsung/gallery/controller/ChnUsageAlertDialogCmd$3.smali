.class Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;
.super Ljava/lang/Object;
.source "ChnUsageAlertDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private startSyncContacts()V
    .locals 5

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePeopleViewAsCategoryType:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->CONTACTS_PERMISSION_GROUP:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SYNC_CONTACTS"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;->START_SYNC:Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/16 v7, 0xe

    const/16 v6, 0xd

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "LocationNetworkAlertDialogOff"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->justSelectedKeyOK:Z
    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$202(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "LocationPermissionAlertDialogOff"

    invoke-static {v1, v2, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsWifiOnlyModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ae

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "ChangePlayerWifiDataAlertDialogOff"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "ScanNearbyDeviceWifiDataAlertDialogOff"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "TagBuddyPermissionAlertDialogOff"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v7, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "FaceTagPermissionAlertDialogOff"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->LatLong:[D
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)[D

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dateInMs:[J
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$400(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)[J

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->createTimeMapView()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "MOREINFO_EVENT"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->startNearbyFramework(Lcom/sec/android/gallery3d/data/DataManager;)V

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$600()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->startNearbyFramework(Lcom/sec/android/gallery3d/data/DataManager;)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSamsungLinkApi:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->acquireWakeLockIfNeeded(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_b

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->startSyncContacts()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->createCategoryView()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)V

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$600()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v7, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->startSyncContacts()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->createCategoryView()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)V

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$600()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method
