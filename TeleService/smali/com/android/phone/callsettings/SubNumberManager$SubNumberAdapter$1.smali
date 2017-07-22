.class Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter$1;
.super Ljava/lang/Object;
.source "SubNumberManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter$1;->this$1:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter$1;->this$1:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v1}, Lcom/android/phone/callsettings/SubNumberManager;->-get3(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter$1;->this$1:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v1, v1, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter$1;->this$1:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v2, v1, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter$1;->val$position:I

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
