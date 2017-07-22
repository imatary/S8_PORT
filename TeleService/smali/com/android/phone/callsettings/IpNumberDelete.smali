.class public Lcom/android/phone/callsettings/IpNumberDelete;
.super Landroid/app/ListActivity;
.source "IpNumberDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;,
        Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;
    }
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mCancelButton:Landroid/widget/Button;

.field private mDefaultIpNumber:Ljava/lang/String;

.field private mDeleteButton:Landroid/widget/Button;

.field private mDeleteStatus:Landroid/widget/CheckBox;

.field private mIpNumberCount:I

.field private mIpNumberString:Ljava/lang/String;

.field private mItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mNumberItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAll:Landroid/widget/CheckBox;

.field private mSelectAllCheck:Z

.field private mTableRow:Landroid/widget/TableRow;

.field private mySharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/IpNumberDelete;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteStatus:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/IpNumberDelete;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/callsettings/IpNumberDelete;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteStatus:Landroid/widget/CheckBox;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    iput v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mMode:I

    return-void
.end method


# virtual methods
.method public deleteDefaultIpNumber()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "defaultNumber"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "IP_CALL_NUMBER"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public deleteIpNumber()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDefaultIpNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->deleteDefaultIpNumber()V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public disableDeleteButtonOrNot()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public getDefaultIpNumber()Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "mySharedPreferences"

    iget v2, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mMode:I

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/callsettings/IpNumberDelete;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mySharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mySharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "defaultNumber"

    const-string/jumbo v3, "defaultNumber"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listBinding()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->setItem()V

    :cond_0
    new-instance v0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    const v2, 0x7f040075

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpNumberDelete;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IpNumberDelete;->setListAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f100168

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpNumberDelete;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAll:Landroid/widget/CheckBox;

    const v1, 0x7f100166

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpNumberDelete;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mTableRow:Landroid/widget/TableRow;

    const v1, 0x7f10016a

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpNumberDelete;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteButton:Landroid/widget/Button;

    const v1, 0x7f100120

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpNumberDelete;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->disableDeleteButtonOrNot()V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/callsettings/IpNumberDelete$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpNumberDelete$1;-><init>(Lcom/android/phone/callsettings/IpNumberDelete;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/callsettings/IpNumberDelete$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpNumberDelete$2;-><init>(Lcom/android/phone/callsettings/IpNumberDelete;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mTableRow:Landroid/widget/TableRow;

    invoke-virtual {v1, p0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAll:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    if-eqz v3, :cond_0

    move v5, v4

    :cond_0
    iput-boolean v5, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const v3, 0x7f100164

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    iget-boolean v5, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    invoke-virtual {v3, v5}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->disableDeleteButtonOrNot()V

    return-void

    :cond_4
    iput v4, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "mySharedPreferences"

    iget v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/callsettings/IpNumberDelete;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mySharedPreferences:Landroid/content/SharedPreferences;

    const v0, 0x7f040076

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IpNumberDelete;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ipNumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "defaultNumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDefaultIpNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IpNumberDelete;->readString(Ljava/lang/String;)Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->listBinding()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iput v4, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    const v3, 0x7f100164

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->setChecked(Z)V

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAll:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    if-ne v6, v7, :cond_4

    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->disableDeleteButtonOrNot()V

    return-void

    :cond_4
    move v5, v4

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "SELECTAll"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "SELECT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "SELECTAll"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "SELECT"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public readString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v2, p1

    const/4 v1, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v5, "_"

    invoke-direct {v4, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    return-object v5
.end method

.method public saveIpNumber(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "ipNumber"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "count"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setItem()V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v1, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;-><init>(Lcom/android/phone/callsettings/IpNumberDelete;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
