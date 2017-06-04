.class Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnClickListener;
.super Ljava/lang/Object;
.source "NavigationSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/drawer/NavigationSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownButtonOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnClickListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;Lcom/sec/samsung/gallery/drawer/NavigationSpinner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnClickListener;-><init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v1, "NavigationSpinner"

    const-string/jumbo v2, "mDropDownButton : OnClickListener is called!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnClickListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    # getter for: Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$100(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnClickListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    # getter for: Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$100(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->updateDefaultExpansionGroup(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnClickListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    # getter for: Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$500(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnClickListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    # getter for: Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$500(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnClickListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    # getter for: Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$500(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnClickListener;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    # getter for: Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$500(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NavigationSpinner"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
