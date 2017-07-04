.class Lcom/sec/samsung/gallery/drawer/NavigationSpinner$PopupMenuItemClickListener;
.super Ljava/lang/Object;
.source "NavigationSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/drawer/NavigationSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$PopupMenuItemClickListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;Lcom/sec/samsung/gallery/drawer/NavigationSpinner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$PopupMenuItemClickListener;-><init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$PopupMenuItemClickListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$100(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$PopupMenuItemClickListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$700(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$PopupMenuItemClickListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$500(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NavigationSpinner"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "NavigationSpinner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ignore selected item, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " drawer adapter size is changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$PopupMenuItemClickListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$500(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$PopupMenuItemClickListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$500(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0
.end method
