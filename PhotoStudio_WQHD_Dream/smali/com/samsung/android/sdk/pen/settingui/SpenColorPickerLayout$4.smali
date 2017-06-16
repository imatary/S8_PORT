.class Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$4;
.super Ljava/lang/Object;
.source "SpenColorPickerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerdExitBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerdExitBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method
