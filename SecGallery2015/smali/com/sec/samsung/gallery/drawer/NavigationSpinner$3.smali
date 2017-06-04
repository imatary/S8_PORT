.class Lcom/sec/samsung/gallery/drawer/NavigationSpinner$3;
.super Ljava/lang/Object;
.source "NavigationSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onConfigurationChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$3;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$3;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    # getter for: Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$500(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
