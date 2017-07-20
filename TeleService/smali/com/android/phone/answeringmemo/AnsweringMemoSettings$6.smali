.class Lcom/android/phone/answeringmemo/AnsweringMemoSettings$6;
.super Ljava/lang/Object;
.source "AnsweringMemoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->showSoundLanguageDialog()V
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

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$6;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$6;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-virtual {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "callsettings_sound_language"

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$6;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-get3(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "AnsweringMemoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selected Pos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$6;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-get3(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$6;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$6;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-get3(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-set0(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;I)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$6;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    const-string/jumbo v1, "sound_language"

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$6;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-get1(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$6;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v3}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-get3(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->updateSoundLanguageSummary(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
