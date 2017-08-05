.class Lcom/android/phone/additionalservice/RegisterUSSD$5;
.super Ljava/lang/Object;
.source "RegisterUSSD.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/additionalservice/RegisterUSSD;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    sget-object v2, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DIALOG_OPEN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    invoke-static {v1, v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-set1(Lcom/android/phone/additionalservice/RegisterUSSD;Lcom/android/phone/additionalservice/RegisterUSSD$AppState;)Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    sget-object v2, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->SERVICE_NAME:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    invoke-static {v1, v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-wrap0(Lcom/android/phone/additionalservice/RegisterUSSD;Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get7(Lcom/android/phone/additionalservice/RegisterUSSD;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get3(Lcom/android/phone/additionalservice/RegisterUSSD;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get2(Lcom/android/phone/additionalservice/RegisterUSSD;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get3(Lcom/android/phone/additionalservice/RegisterUSSD;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget v0, v1, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->id:I

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v1, v0}, Lcom/android/phone/additionalservice/RegisterUSSD;->-wrap1(Lcom/android/phone/additionalservice/RegisterUSSD;I)V

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get2(Lcom/android/phone/additionalservice/RegisterUSSD;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get3(Lcom/android/phone/additionalservice/RegisterUSSD;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    const v3, 0x7f0d0627

    invoke-virtual {v2, v3}, Lcom/android/phone/additionalservice/RegisterUSSD;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-wrap2(Lcom/android/phone/additionalservice/RegisterUSSD;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get6(Lcom/android/phone/additionalservice/RegisterUSSD;)Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->notifyDataSetInvalidated()V

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get2(Lcom/android/phone/additionalservice/RegisterUSSD;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    :goto_1
    invoke-static {v2, v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->-set1(Lcom/android/phone/additionalservice/RegisterUSSD;Lcom/android/phone/additionalservice/RegisterUSSD$AppState;)Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get4(Lcom/android/phone/additionalservice/RegisterUSSD;)Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$5;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterUSSD;->emptyText:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
