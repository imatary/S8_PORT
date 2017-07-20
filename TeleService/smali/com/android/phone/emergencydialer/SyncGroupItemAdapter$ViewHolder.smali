.class public Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SyncGroupItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mId:J

.field public mItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

.field public mPosition:I

.field public parentView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;


# direct methods
.method public constructor <init>(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->parentView:Landroid/view/View;

    iget-object v2, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->parentView:Landroid/view/View;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
.end method
