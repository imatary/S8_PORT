.class public final Landroid/database/BulkCursorDescriptor;
.super Ljava/lang/Object;
.source "BulkCursorDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/BulkCursorDescriptor$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/database/BulkCursorDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public columnNames:[Ljava/lang/String;

.field public count:I

.field public cursor:Landroid/database/IBulkCursor;

.field public wantsAllOnMoveCalls:Z

.field public window:Landroid/database/CursorWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/database/BulkCursorDescriptor$1;

    invoke-direct {v0}, Landroid/database/BulkCursorDescriptor$1;-><init>()V

    sput-object v0, Landroid/database/BulkCursorDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/database/BulkCursorNative;->asInterface(Landroid/os/IBinder;)Landroid/database/IBulkCursor;

    move-result-object v1

    iput-object v1, p0, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/database/BulkCursorDescriptor;->count:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    iput-object v0, p0, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    invoke-interface {v0}, Landroid/database/IBulkCursor;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/database/BulkCursorDescriptor;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    invoke-virtual {v0, p1, p2}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
