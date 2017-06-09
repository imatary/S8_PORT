.class Lcom/android/providers/media/RingtonePickerActivity$5;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/RingtonePickerActivity;->addAddItem(Landroid/widget/ListView;)V
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

    iput-object p1, p0, Lcom/android/providers/media/RingtonePickerActivity$5;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$5;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->-wrap4(Lcom/android/providers/media/RingtonePickerActivity;)V

    const-string/jumbo v0, "RingtonePickerActivity"

    const-string/jumbo v1, "Add item is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$5;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/media/RingtonePickerActivity;->setResult(I)V

    const-string/jumbo v0, "RingtonePickerActivity"

    const-string/jumbo v1, "setResult and picker will be finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$5;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-virtual {v0}, Lcom/android/providers/media/RingtonePickerActivity;->finish()V

    return-void
.end method
