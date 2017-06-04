.class public Lcom/samsung/android/devicecog/gallery/DeviceCogVisualSearchFaceTagActivityListenerImpl;
.super Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;
.source "DeviceCogVisualSearchFaceTagActivityListenerImpl.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    return-void
.end method


# virtual methods
.method protected createDeviceCogHandler()Lcom/samsung/android/devicecog/DeviceCogHandler;
    .locals 3

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogVisualSearchFaceTagActivityHandlerImpl;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogVisualSearchFaceTagActivityListenerImpl;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogVisualSearchFaceTagActivityListenerImpl;->mExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/DeviceCogVisualSearchFaceTagActivityHandlerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    return-object v0
.end method

.method getInterimStateListener()Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogVisualSearchFaceTagActivityListenerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogVisualSearchFaceTagActivityListenerImpl$1;-><init>(Lcom/samsung/android/devicecog/gallery/DeviceCogVisualSearchFaceTagActivityListenerImpl;)V

    return-object v0
.end method

.method getMultiPathRuleListener()Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onDeviceCogActivityOnBackPressed(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->onDeviceCogActivityOnBackPressed(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onDeviceCogActivityPause()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->onDeviceCogActivityPause()V

    return-void
.end method

.method public bridge synthetic onDeviceCogActivityResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->onDeviceCogActivityResume()V

    return-void
.end method
