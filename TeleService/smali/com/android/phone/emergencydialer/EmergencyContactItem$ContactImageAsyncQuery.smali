.class Lcom/android/phone/emergencydialer/EmergencyContactItem$ContactImageAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "EmergencyContactItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/emergencydialer/EmergencyContactItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactImageAsyncQuery"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;


# direct methods
.method public constructor <init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$ContactImageAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "EmergencyContactItem"

    const-string/jumbo v2, "ContactImageAsyncQuery complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$ContactImageAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    array-length v2, v0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-set0(Lcom/android/phone/emergencydialer/EmergencyContactItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$ContactImageAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-wrap0(Lcom/android/phone/emergencydialer/EmergencyContactItem;)V

    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method
