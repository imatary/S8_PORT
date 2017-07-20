.class public Lcom/android/phone/CallForwardingUSSDResponseParser;
.super Ljava/lang/Object;
.source "CallForwardingUSSDResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private words:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "#$"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\*"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseResponseUSSD()Ljava/lang/CharSequence;
    .locals 7

    const-string/jumbo v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI1 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v1

    const-string/jumbo v4, "CallForwardingUSSDResponseParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t interpret call forwarding response USSD ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_1

    :pswitch_2
    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI2 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v2

    const-string/jumbo v4, "CallForwardingUSSDResponseParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t interpret call forwarding response USSD ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :pswitch_3
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aa7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aad

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aaf

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_2

    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI5 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_4
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aa8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_3

    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI6 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_6
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_7
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aac

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_3
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x34

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI7 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_8
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_4

    :pswitch_9
    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI2 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_a
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_5

    :pswitch_b
    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI3 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_c
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aa5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    :pswitch_d
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_6

    :pswitch_e
    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI3 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_f
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aa6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_2
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    return-object v4

    :pswitch_10
    :try_start_3
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_7

    :pswitch_11
    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI3 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_2
    move-exception v2

    :try_start_4
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_4
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v4

    return-object v4

    :pswitch_12
    :try_start_5
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aa6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v4

    return-object v4

    :pswitch_13
    :try_start_6
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    :pswitch_14
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_8

    :pswitch_15
    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI2 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_16
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    :pswitch_17
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    :pswitch_18
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    :pswitch_19
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    :pswitch_1a
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_9

    :pswitch_1b
    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI2 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1c
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aec

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    :pswitch_1d
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aec

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    :pswitch_1e
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aed

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    :pswitch_1f
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0aed

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    :pswitch_20
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    :pswitch_21
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_a

    :pswitch_22
    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI2 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    :pswitch_23
    :try_start_7
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_b

    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI3 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_3
    move-exception v2

    :try_start_8
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_8
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v4

    return-object v4

    :pswitch_24
    :try_start_9
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v4

    return-object v4

    :pswitch_25
    :try_start_a
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_c

    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI3 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_a .. :try_end_a} :catch_0

    :catch_4
    move-exception v2

    :try_start_b
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_b
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_1

    move-result-object v4

    return-object v4

    :pswitch_26
    :try_start_c
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_c .. :try_end_c} :catch_0

    move-result-object v4

    return-object v4

    :pswitch_27
    :try_start_d
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->words:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_d

    new-instance v4, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;

    const-string/jumbo v5, "SI3 is wrong"

    invoke-direct {v4, v5}, Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_d .. :try_end_d} :catch_0

    :catch_5
    move-exception v2

    :try_start_e
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_e
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_1

    move-result-object v4

    return-object v4

    :pswitch_28
    :try_start_f
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_5
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_f .. :try_end_f} :catch_0

    move-result-object v4

    return-object v4

    :pswitch_29
    :try_start_10
    iget-object v4, p0, Lcom/android/phone/CallForwardingUSSDResponseParser;->context:Landroid/content/Context;

    const v5, 0x7f0d0ab2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_10
    .catch Lcom/android/phone/CallForwardingUSSDResponseParser$WrongResponseUSSDSIException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_1

    move-result-object v4

    return-object v4

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_1a
        :pswitch_21
        :pswitch_0
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_13
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_10
        :pswitch_9
        :pswitch_d
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x31
        :pswitch_c
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x30
        :pswitch_12
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x30
        :pswitch_19
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_15
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x30
        :pswitch_20
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x30
        :pswitch_29
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_27
        :pswitch_22
        :pswitch_25
        :pswitch_23
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x30
        :pswitch_24
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x30
        :pswitch_26
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x30
        :pswitch_28
    .end packed-switch
.end method
