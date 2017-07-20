.class public Lcom/android/phone/photoring/PhotoringUtil$CharacterFilter;
.super Ljava/lang/Object;
.source "PhotoringUtil.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharacterFilter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringUtil$CharacterFilter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x2003

    const-string/jumbo v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/phone/photoring/PhotoringUtil$CharacterFilter;->context:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/phone/photoring/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v4, ""

    return-object v4

    :cond_1
    const-string/jumbo v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/phone/photoring/PhotoringUtil$CharacterFilter;->context:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/phone/photoring/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v4, ""

    return-object v4

    :cond_3
    const-string/jumbo v4, "feature_skt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const/16 v4, 0x226a

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const/16 v4, 0x226b

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const/16 v4, 0x25cf

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const v4, 0xffe0

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const v4, 0xffe1

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_5
    const v4, 0xffe5

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const/16 v4, 0x24d2

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_7
    const/16 v4, 0xb7

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_8
    const/16 v4, 0x20

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_9
    const v4, 0xffe6

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_6
    return-object v7

    :cond_7
    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0xa2 -> :sswitch_3
        0xa3 -> :sswitch_4
        0xa5 -> :sswitch_5
        0xa9 -> :sswitch_6
        0xab -> :sswitch_0
        0xbb -> :sswitch_1
        0x2022 -> :sswitch_7
        0x20a9 -> :sswitch_9
        0xfffd -> :sswitch_8
    .end sparse-switch
.end method
