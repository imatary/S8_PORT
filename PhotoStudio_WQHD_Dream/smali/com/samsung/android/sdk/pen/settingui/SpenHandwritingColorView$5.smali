.class Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$5;
.super Ljava/lang/Object;
.source "SpenHandwritingColorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, -0x777778

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$600(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x4d888888

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # operator++ for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$308(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColorTable()V
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$800(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)V

    :cond_2
    return-void
.end method
