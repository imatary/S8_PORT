.class Lcom/android/phone/callsettings/AutoRejectList$4;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$4;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$4;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-static {v0, p2}, Lcom/android/phone/callsettings/AutoRejectList;->-set5(Lcom/android/phone/callsettings/AutoRejectList;I)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
