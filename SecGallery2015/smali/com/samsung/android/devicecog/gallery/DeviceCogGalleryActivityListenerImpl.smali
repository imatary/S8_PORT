.class public Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;
.super Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;
.source "DeviceCogGalleryActivityListenerImpl.java"


# instance fields
.field protected mDCActivityInfoListener:Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;

.field private mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field private mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$3;-><init>(Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mDCActivityInfoListener:Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;

    return-void
.end method


# virtual methods
.method protected createDeviceCogHandler()Lcom/samsung/android/devicecog/DeviceCogHandler;
    .locals 2

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method getInterimStateListener()Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$1;-><init>(Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    goto :goto_0
.end method

.method getMultiPathRuleListener()Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$2;-><init>(Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    goto :goto_0
.end method

.method protected logDCState(Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V
    .locals 0

    return-void
.end method

.method public onDeviceCogActivityOnBackPressed(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseForRuleCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDeviceCogActivityPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setDCActivityInfoListener(Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;)V

    invoke-super {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->onDeviceCogActivityPause()V

    return-void
.end method

.method public onDeviceCogActivityResume()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mDCActivityInfoListener:Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setDCActivityInfoListener(Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;)V

    invoke-super {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->onDeviceCogActivityResume()V

    return-void
.end method
