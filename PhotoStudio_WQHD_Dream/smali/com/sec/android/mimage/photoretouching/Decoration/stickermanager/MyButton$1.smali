.class Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;
.super Ljava/lang/Object;
.source "MyButton.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->onkey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    const/16 v0, 0x17

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isSelected()Z

    move-result v3

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mIsSelected:Z
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->access$002(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setPressed(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mIsSelected:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mIsSelected:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;)Landroid/widget/CheckBox;

    move-result-object v0

    const v3, 0x7f020714

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mDoneBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mButtonChangeCallback:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$ButtonChangeCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mButtonChangeCallback:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$ButtonChangeCallback;

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$ButtonChangeCallback;->setChange(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->mDoneBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
