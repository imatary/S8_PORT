.class Lcom/android/providers/media/RingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/media/RingtonePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " item clicked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1, p3}, Lcom/android/providers/media/RingtonePickerActivity;->-set0(Lcom/android/providers/media/RingtonePickerActivity;I)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get2(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v2}, Lcom/android/providers/media/RingtonePickerActivity;->-get1(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get0(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get0(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->performClick()Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-virtual {v2}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/providers/media/RingtonePickerActivity;->-wrap0(Lcom/android/providers/media/RingtonePickerActivity;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-wrap4(Lcom/android/providers/media/RingtonePickerActivity;)V

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    const v2, 0x7f07000a

    invoke-static {v1, v2}, Lcom/android/providers/media/RingtonePickerActivity;->-wrap3(Lcom/android/providers/media/RingtonePickerActivity;I)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get2(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v2}, Lcom/android/providers/media/RingtonePickerActivity;->-get4(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get11(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get3(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get2(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v2}, Lcom/android/providers/media/RingtonePickerActivity;->-get9(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get8(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get3(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get3(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get4(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    if-eq v1, v5, :cond_4

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get3(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get9(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    if-eq v1, v5, :cond_5

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get8(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get6(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/media/RingtoneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v3}, Lcom/android/providers/media/RingtonePickerActivity;->-get2(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/providers/media/RingtonePickerActivity;->-wrap1(Lcom/android/providers/media/RingtonePickerActivity;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get5(Lcom/android/providers/media/RingtonePickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get1(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_7

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-wrap4(Lcom/android/providers/media/RingtonePickerActivity;)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1, p3, v4}, Lcom/android/providers/media/RingtonePickerActivity;->-wrap2(Lcom/android/providers/media/RingtonePickerActivity;II)V

    goto/16 :goto_1
.end method
