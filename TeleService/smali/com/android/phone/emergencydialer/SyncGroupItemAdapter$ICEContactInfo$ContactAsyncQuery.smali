.class Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo$ContactAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "SyncGroupItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactAsyncQuery"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;


# direct methods
.method public constructor <init>(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo$ContactAsyncQuery;->this$1:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "EmergencySyncGroupItemAdapter"

    const-string/jumbo v2, "ContactImageAsyncQuery complete"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo$ContactAsyncQuery;->this$1:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;

    array-length v2, v0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->-set0(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo$ContactAsyncQuery;->this$1:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;

    iget-object v1, v1, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo$ContactAsyncQuery;->this$1:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->-get0(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->-wrap0(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;J)V

    :cond_1
    return-void
.end method
