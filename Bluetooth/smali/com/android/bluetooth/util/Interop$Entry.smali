.class Lcom/android/bluetooth/util/Interop$Entry;
.super Ljava/lang/Object;
.source "Interop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/util/Interop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field workaround_id:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/bluetooth/util/Interop$Entry;->workaround_id:I

    iput-object p2, p0, Lcom/android/bluetooth/util/Interop$Entry;->address:Ljava/lang/String;

    return-void
.end method
