.class Lcom/android/phone/additionalservice/RegisterUSSD$4;
.super Ljava/lang/Object;
.source "RegisterUSSD.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/additionalservice/RegisterUSSD;->RegisterUSSDEventInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/additionalservice/RegisterUSSD;


# direct methods
.method constructor <init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$4;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$4;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get4(Lcom/android/phone/additionalservice/RegisterUSSD;)Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$4;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    add-int/lit8 v3, p3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/additionalservice/RegisterUSSD;->-set0(Lcom/android/phone/additionalservice/RegisterUSSD;I)I

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$4;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    sget-object v3, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DIALOG_OPEN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    invoke-static {v2, v3}, Lcom/android/phone/additionalservice/RegisterUSSD;->-set1(Lcom/android/phone/additionalservice/RegisterUSSD;Lcom/android/phone/additionalservice/RegisterUSSD$AppState;)Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$4;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    sget-object v3, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->SERVICE_NAME:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    invoke-static {v2, v3}, Lcom/android/phone/additionalservice/RegisterUSSD;->-wrap0(Lcom/android/phone/additionalservice/RegisterUSSD;Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$4;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get4(Lcom/android/phone/additionalservice/RegisterUSSD;)Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DELETE_CHECK:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$4;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$4;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$4;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD;->selectAllCheck:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD$4;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    iget-object v3, v3, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$4;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-virtual {v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_2
.end method
