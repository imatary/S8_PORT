.class Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;
.super Landroid/widget/FrameLayout;
.source "HistoryViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryItemView"
.end annotation


# instance fields
.field private mLayout:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;->mLayout:Landroid/view/ViewGroup;

    const v0, 0x7f03007e

    invoke-static {p2, v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;->mLayout:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public getHistoryIcon()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0e0271

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getHistorylabel()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0e0273

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
