.class Lcom/android/launcher3/util/logging/SALogging$32;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertQOEventLog(ILcom/android/launcher3/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$activity:Lcom/android/launcher3/Launcher;

.field final synthetic val$option:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$32;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$activity:Lcom/android/launcher3/Launcher;

    iput p3, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$option:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const v14, 0x7f090157

    const v13, 0x7f090156

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    sget-object v7, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$activity:Lcom/android/launcher3/Launcher;

    iget v8, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$option:I

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/launcher3/Utilities;->getStringByLocale(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$option:I

    const v8, 0x7f0900a1

    if-ne v7, v8, :cond_0

    const-string v2, "Add to secure folder"

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/launcher3/util/logging/SALogging$32;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v8, v8, Lcom/android/launcher3/util/logging/SALogging;->mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

    iget-object v8, v8, Lcom/android/launcher3/util/logging/SALogging$QOAction;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$activity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$activity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v5

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-ne v6, v10, :cond_4

    const v7, 0x7f0901ac

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v7, v7, Lcom/android/launcher3/util/logging/SALogging;->mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

    iget v7, v7, Lcom/android/launcher3/util/logging/SALogging$QOAction;->mItemType:I

    sparse-switch v7, :sswitch_data_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    if-nez v1, :cond_a

    :cond_3
    :goto_2
    return-void

    :cond_4
    if-ne v6, v11, :cond_5

    const v7, 0x7f09019f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    if-ne v6, v12, :cond_1

    if-ne v5, v10, :cond_6

    const v7, 0x7f0901a4

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    if-ne v5, v11, :cond_1

    const v7, 0x7f090198

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :sswitch_0
    if-ne v6, v10, :cond_7

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    if-ne v6, v11, :cond_8

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    if-ne v6, v12, :cond_2

    const v7, 0x7f09012c

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_1
    if-ne v6, v10, :cond_9

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    if-ne v6, v11, :cond_2

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_2
    if-ne v6, v10, :cond_2

    const v7, 0x7f090158

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_a
    if-eqz v0, :cond_b

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v7, v4, v1, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v7, v4, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
