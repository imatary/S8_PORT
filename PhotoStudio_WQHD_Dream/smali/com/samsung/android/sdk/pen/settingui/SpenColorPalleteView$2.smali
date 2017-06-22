.class Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$2;
.super Ljava/lang/Object;
.source "SpenColorPaletteView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->performColorClick(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
