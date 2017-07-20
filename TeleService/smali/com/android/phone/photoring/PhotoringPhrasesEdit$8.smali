.class Lcom/android/phone/photoring/PhotoringPhrasesEdit$8;
.super Ljava/lang/Object;
.source "PhotoringPhrasesEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoringPhrasesEdit;->showAttachMenuDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$8;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$8;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-wrap1(Lcom/android/phone/photoring/PhotoringPhrasesEdit;I)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$8;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-wrap1(Lcom/android/phone/photoring/PhotoringPhrasesEdit;I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$8;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-wrap1(Lcom/android/phone/photoring/PhotoringPhrasesEdit;I)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$8;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-wrap1(Lcom/android/phone/photoring/PhotoringPhrasesEdit;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1001c3 -> :sswitch_0
        0x7f1001c6 -> :sswitch_2
        0x7f1001ca -> :sswitch_1
        0x7f1001cd -> :sswitch_3
    .end sparse-switch
.end method
