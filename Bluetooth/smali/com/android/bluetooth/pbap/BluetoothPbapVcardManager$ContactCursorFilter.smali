.class public final Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$ContactCursorFilter;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactCursorFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterByOffset(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 1

    invoke-static {p0, p1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$ContactCursorFilter;->filterByRange(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static filterByRange(Landroid/database/Cursor;II)Landroid/database/Cursor;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v5, "contact_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    new-instance v1, Landroid/database/MatrixCursor;

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v8, "contact_id"

    aput-object v8, v5, v9

    invoke-direct {v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    if-gt v4, p2, :cond_2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v5, v6, v2

    if-eqz v5, :cond_0

    move-wide v6, v2

    if-lt v4, p1, :cond_1

    new-array v5, v10, [Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v9

    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
