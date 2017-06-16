.class Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;
.super Ljava/lang/Object;
.source "SpenHandwritingSizeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)[Landroid/widget/RelativeLayout;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "SpenHandwritingSizeView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick, size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenSizeList:[I
    invoke-static {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)[I

    move-result-object v6

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenSizeList:[I
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)[I

    move-result-object v5

    aget v5, v5, v1

    invoke-interface {v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;->onSizeChanged(I)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)[Landroid/widget/RelativeLayout;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeSelector:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_selected:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)[Landroid/widget/RelativeLayout;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_not_selected:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)[Landroid/widget/RelativeLayout;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    return-void
.end method
