.class Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnKeyListener;
.super Ljava/lang/Object;
.source "NavigationSpinner.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/drawer/NavigationSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownButtonOnKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnKeyListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;Lcom/sec/samsung/gallery/drawer/NavigationSpinner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnKeyListener;-><init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "NavigationSpinner"

    const-string/jumbo v2, "mDropDownButton : OnKeyListener is called!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnKeyListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    # getter for: Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$600(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnKeyListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    # getter for: Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$600(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
