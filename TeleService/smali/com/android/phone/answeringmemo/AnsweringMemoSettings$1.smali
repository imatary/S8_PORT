.class Lcom/android/phone/answeringmemo/AnsweringMemoSettings$1;
.super Ljava/lang/Object;
.source "AnsweringMemoSettings.java"

# interfaces
.implements Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/answeringmemo/AnsweringMemoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$1;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$1;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-virtual {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "callsettings_ring_duration"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$1;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    const-string/jumbo v1, "ring_duration_setting"

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$1;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0d0cbb

    invoke-virtual {v2, v4, v3}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->updateRingDurationSettingSummary(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
