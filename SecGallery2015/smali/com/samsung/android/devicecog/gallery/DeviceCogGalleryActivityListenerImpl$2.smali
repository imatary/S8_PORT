.class Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$2;
.super Ljava/lang/Object;
.source "DeviceCogGalleryActivityListenerImpl.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->getMultiPathRuleListener()Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;
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

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$2;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPathRuleSplit(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl$2;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    invoke-interface {v0, p1}, Lcom/samsung/android/devicecog/DeviceCogHandler;->handleSplitState(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
