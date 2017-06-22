.class Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$2;
.super Ljava/lang/Object;
.source "SpenColorPickerLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    if-eq p3, p5, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mIsRotated:Z
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mNeedRotateWhenSetPosition:Z
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->rotatePosition()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mIsRotated:Z
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$102(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->checkPosition()V
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$200(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
