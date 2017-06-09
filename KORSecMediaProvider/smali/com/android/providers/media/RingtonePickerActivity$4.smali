.class Lcom/android/providers/media/RingtonePickerActivity$4;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/RingtonePickerActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/providers/media/RingtonePickerActivity$4;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$4;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->-get7(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$4;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->-get5(Lcom/android/providers/media/RingtonePickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$4;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->-get7(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$4;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get1(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$4;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->-wrap4(Lcom/android/providers/media/RingtonePickerActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$4;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$4;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->-get7(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lcom/android/providers/media/RingtonePickerActivity;->-wrap2(Lcom/android/providers/media/RingtonePickerActivity;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$4;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->-wrap4(Lcom/android/providers/media/RingtonePickerActivity;)V

    goto :goto_0
.end method
