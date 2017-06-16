.class Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$2;
.super Ljava/lang/Object;
.source "SpenSimpleView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->onSelectObject(Ljava/util/ArrayList;IIFFI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    const/16 v3, 0x16

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1000(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1000(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_0
    return-void
.end method
