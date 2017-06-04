.class Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceToTVUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private extracted(Ljava/io/Serializable;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Serializable;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    # getter for: Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->FeatureUseDeviceToTV:Z
    invoke-static {}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "DeviceToTVUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Action is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.m2tv.TV_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "registered"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "DeviceToTVUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registered is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

    const/4 v4, 0x1

    # invokes: Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTVUtil(ZZ)V
    invoke-static {v3, v4, v1}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->access$100(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;ZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.m2tv.TV_DETACHED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

    # invokes: Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTVUtil(ZZ)V
    invoke-static {v3, v6, v6}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->access$100(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;ZZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.m2tv.TV_SHOW_TV_ON_DLG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

    # getter for: Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTop:Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;
    invoke-static {v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->access$200(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;)Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

    # getter for: Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTop:Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;
    invoke-static {v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->access$200(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;)Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->showDialog()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.m2tv.TV_CANCEL_TV_ON_DLG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

    # getter for: Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTop:Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;
    invoke-static {v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->access$200(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;)Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

    # getter for: Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTop:Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;
    invoke-static {v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->access$200(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;)Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->dismissDialog()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.m2tv.TV_LIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    const-string/jumbo v3, "tv_list"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-nez v2, :cond_6

    const-string/jumbo v3, "DeviceToTVUtil"

    const-string/jumbo v4, "TV list is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DeviceToTVUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BadParcelableException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/BadParcelableException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$1;->extracted(Ljava/io/Serializable;)Ljava/util/ArrayList;

    move-result-object v4

    # setter for: Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTvList:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->access$302(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

    # invokes: Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTVList()V
    invoke-static {v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->access$400(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
