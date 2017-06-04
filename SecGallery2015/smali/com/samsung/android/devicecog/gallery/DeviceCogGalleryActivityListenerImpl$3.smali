.class Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$3;
.super Ljava/lang/Object;
.source "DeviceCogGalleryActivityListenerImpl.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$3;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeStateOnActivity(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$3;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;

    iget-object v2, v2, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    invoke-interface {v2, p1}, Lcom/samsung/android/devicecog/DeviceCogHandler;->setCurrentDCState(Lcom/samsung/android/sdk/bixby/data/State;)V

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$3;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;

    iget-object v2, v2, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/devicecog/DeviceCogHandler;->handleState(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public getCurrentDCScreenStateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$3;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    check-cast v0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->getCurrentScreenStateIdOnTopState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
