.class Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$1;
.super Landroid/content/BroadcastReceiver;
.source "SecretModeReceiverCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v1

    const-string/jumbo v2, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->setSecretModeOn(Z)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v2

    if-eq v1, v2, :cond_4

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "SECRET_MODE_CHANGED"

    invoke-virtual {v2, v3, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateTasks:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOnSecretboxListener:Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SecretModeReceiverCmd"

    const-string/jumbo v3, "mOnSecretboxListener cancelOperation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOnSecretboxListener:Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;->cancelOperation()V

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateModeChangeListener:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$PrivateModeChangeListener;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateModeChangeListener:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$PrivateModeChangeListener;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$PrivateModeChangeListener;->onPrivateModeChanged()V

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mPrivateModeChangeListener:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$PrivateModeChangeListener;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mPrivateModeChangeListener:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$PrivateModeChangeListener;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$PrivateModeChangeListener;->onPrivateModeChanged()V

    :cond_3
    sget-object v2, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mPrivateModeChangeListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$PrivateModeChangeListener;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mPrivateModeChangeListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$PrivateModeChangeListener;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$PrivateModeChangeListener;->onPrivateModeChanged()V

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->isPhotoPage()Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->requestUpdateScreenByCategoryChange(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    :cond_5
    return-void

    :cond_6
    const-string/jumbo v2, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->setSecretModeOn(Z)V

    goto :goto_0
.end method
