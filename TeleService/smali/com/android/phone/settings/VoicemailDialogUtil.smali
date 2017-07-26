.class public Lcom/android/phone/settings/VoicemailDialogUtil;
.super Ljava/lang/Object;
.source "VoicemailDialogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDialog(Lcom/android/phone/settings/VoicemailSettingsActivity;I)Landroid/app/Dialog;
    .locals 11

    const/16 v10, 0x25b

    const/16 v9, 0x259

    const/4 v8, 0x0

    const v7, 0x7f0d0394

    const/16 v6, 0x1f4

    if-eq p1, v6, :cond_0

    const/16 v6, 0x190

    if-ne p1, v6, :cond_1

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d038d

    sparse-switch p1, :sswitch_data_0

    const v4, 0x7f0d0392

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    return-object v1

    :cond_1
    const/16 v6, 0x1f5

    if-eq p1, v6, :cond_0

    const/16 v6, 0x1f6

    if-eq p1, v6, :cond_0

    const/16 v6, 0x258

    if-eq p1, v6, :cond_0

    const/16 v6, 0x320

    if-eq p1, v6, :cond_0

    if-eq p1, v9, :cond_2

    const/16 v6, 0x25a

    if-ne p1, v6, :cond_3

    :cond_2
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d0356

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    if-ne p1, v9, :cond_4

    const v6, 0x7f0d038f

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v2

    :sswitch_0
    const v4, 0x7f0d039b

    const v5, 0x7f0d0350

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_1
    const v4, 0x7f0d039f

    const v5, 0x7f0d0350

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_2
    const v4, 0x7f0d039c

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_3
    const v4, 0x7f0d039d

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_4
    const v4, 0x7f0d039e

    const v6, 0x7f0d0502

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0d0503

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :sswitch_5
    const v5, 0x7f0d0473

    const v4, 0x7f0d0478

    const v6, 0x1010355

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0d032a

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_3
    if-eq p1, v10, :cond_2

    const/4 v6, 0x0

    return-object v6

    :cond_4
    if-ne p1, v10, :cond_5

    const v6, 0x7f0d0390

    goto :goto_1

    :cond_5
    const v6, 0x7f0d038e

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_0
        0x320 -> :sswitch_5
    .end sparse-switch
.end method
