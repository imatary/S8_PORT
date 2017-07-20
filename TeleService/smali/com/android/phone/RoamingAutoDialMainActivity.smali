.class public Lcom/android/phone/RoamingAutoDialMainActivity;
.super Landroid/app/ListActivity;
.source "RoamingAutoDialMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RoamingAutoDialMainActivity$OkClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d060c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0611

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0612

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d060d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d061a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d060e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d060f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0400c9

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingAutoDialMainActivity;->setContentView(I)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0400e7

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingAutoDialMainActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, "RoamingAutoDialMainActivity"

    const-string/jumbo v2, "onCreateDialog id ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d061d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/phone/RoamingAutoDialMainActivity$OkClickListener;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/RoamingAutoDialMainActivity$OkClickListener;-><init>(Lcom/android/phone/RoamingAutoDialMainActivity;Lcom/android/phone/RoamingAutoDialMainActivity$OkClickListener;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/RoamingAutoDialSubActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    packed-switch p3, :pswitch_data_0

    const-string/jumbo v1, "RoamingAutoDialMainActivity"

    const-string/jumbo v2, "ListItemClick position ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "RAD_SUB_NAME"

    const-string/jumbo v2, "SKTRADAboutRADActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "RAD_SUB_NAME"

    const-string/jumbo v2, "SKTRADDialToKoreaActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "RAD_SUB_NAME"

    const-string/jumbo v2, "SKTRADDialToAbroadActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "RAD_SUB_NAME"

    const-string/jumbo v2, "SKTRADTRoamingCenterActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v1, "RAD_SUB_NAME"

    const-string/jumbo v2, "SKTRADMOFATInfoActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    const-string/jumbo v1, "RAD_SUB_NAME"

    const-string/jumbo v2, "SKTRADOnOffActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    const-string/jumbo v1, "RAD_SUB_NAME"

    const-string/jumbo v2, "SKTRADLocalTimeInfoActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
