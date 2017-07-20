.class public Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecordCallsAutomaticallyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RecordCallsAutomaticallyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordCallsTypeListAdapter"
.end annotation


# instance fields
.field private isEnabled:Z

.field private mItem:[I

.field final synthetic this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/RecordCallsAutomaticallyActivity;[I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;->mItem:[I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;->mItem:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const v5, 0x1020014

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-virtual {v3}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0400e9

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;->mItem:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(I)V

    iget-boolean v3, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;->isEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-static {v3}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->-wrap0(Lcom/android/phone/RecordCallsAutomaticallyActivity;)V

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-virtual {v0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "record_calls_automatically_on_off"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v3, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;->isEnabled:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;->isEnabled:Z

    return v0

    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;->isEnabled:Z

    goto :goto_0
.end method
