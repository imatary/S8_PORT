.class Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$1;
.super Ljava/lang/Object;
.source "SpenHandwritingSizeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    iget v1, v1, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSelectedIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->invalidate()V

    :cond_0
    return-void
.end method
