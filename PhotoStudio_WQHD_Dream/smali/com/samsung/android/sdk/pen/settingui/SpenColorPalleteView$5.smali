.class Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$5;
.super Ljava/lang/Object;
.source "SpenColorPaletteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)I

    move-result v0

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, -0x777778

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$600(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x4d888888

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # operator++ for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$308(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->setColorTable()V
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$800(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)V

    :cond_2
    return-void
.end method
