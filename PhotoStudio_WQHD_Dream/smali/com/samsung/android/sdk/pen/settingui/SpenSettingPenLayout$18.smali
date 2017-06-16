.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$18;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->penTypeLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$18;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$18;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mHhorizontalView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$4800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$18;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$18;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mHhorizontalView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$4800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isScrollable(Landroid/widget/HorizontalScrollView;)Z
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$4900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Landroid/widget/HorizontalScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$18;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mHhorizontalView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$4800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
