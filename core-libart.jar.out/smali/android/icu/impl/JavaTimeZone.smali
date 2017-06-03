.class public Landroid/icu/impl/JavaTimeZone;
.super Landroid/icu/util/TimeZone;
.source "JavaTimeZone.java"


# static fields
.field private static final AVAILABLESET:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mObservesDaylightTime:Ljava/lang/reflect/Method; = null

.field private static final serialVersionUID:J = 0x60d4e0281a0a2e14L


# instance fields
.field private volatile transient isFrozen:Z

.field private transient javacal:Ljava/util/Calendar;

.field private javatz:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    sput-object v4, Landroid/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    sget-object v4, Landroid/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v5, Ljava/util/TimeZone;

    const-string/jumbo v6, "observesDaylightTime"

    const/4 v4, 0x0

    nop

    nop

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/icu/impl/JavaTimeZone;->mObservesDaylightTime:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/JavaTimeZone;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/icu/util/TimeZone;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/JavaTimeZone;->isFrozen:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {p0, p2}, Landroid/icu/impl/JavaTimeZone;->setID(Ljava/lang/String;)V

    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    return-void
.end method

.method public static createTimeZone(Ljava/lang/String;)Landroid/icu/impl/JavaTimeZone;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    invoke-virtual {v3, p0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    new-array v1, v3, [Z

    invoke-static {p0, v1}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-boolean v3, v1, v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    return-object v4

    :cond_2
    new-instance v3, Landroid/icu/impl/JavaTimeZone;

    invoke-direct {v3, v2, p0}, Landroid/icu/impl/JavaTimeZone;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/JavaTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/JavaTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 2

    invoke-super {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/JavaTimeZone;

    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, v0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    iput-object v1, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/impl/JavaTimeZone;->isFrozen:Z

    return-object v0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/JavaTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public getDSTSavings()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    return v0
.end method

.method public getOffset(IIIIII)I
    .locals 7

    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    return v0
.end method

.method public getOffset(JZ[I)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    move-object/from16 v19, v0

    monitor-enter v19

    if-eqz p3, :cond_4

    const/4 v2, 0x6

    :try_start_0
    new-array v12, v2, [I

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v12}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    const/4 v2, 0x5

    aget v18, v12, v2

    move/from16 v0, v18

    rem-int/lit16 v14, v0, 0x3e8

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    rem-int/lit8 v8, v18, 0x3c

    div-int/lit8 v18, v18, 0x3c

    rem-int/lit8 v7, v18, 0x3c

    div-int/lit8 v6, v18, 0x3c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/4 v3, 0x0

    aget v3, v12, v3

    const/4 v4, 0x1

    aget v4, v12, v4

    const/4 v5, 0x2

    aget v5, v12, v5

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v14}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/4 v2, 0x4

    aget v2, v12, v2

    if-ne v2, v11, :cond_0

    if-eq v6, v13, :cond_2

    :cond_0
    :goto_0
    const/4 v2, 0x4

    aget v2, v12, v2

    sub-int v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const/4 v9, 0x1

    :goto_1
    mul-int/lit8 v2, v9, 0x18

    add-int/2addr v2, v13

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x3c

    add-int v2, v2, v16

    sub-int/2addr v2, v7

    mul-int/lit8 v2, v2, 0x3c

    add-int v2, v2, v17

    sub-int/2addr v2, v8

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v15

    sub-int v10, v2, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    int-to-long v0, v10

    move-wide/from16 v20, v0

    sub-long v4, v4, v20

    const-wide/16 v20, 0x1

    sub-long v4, v4, v20

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, p4, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    aput v2, p4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v19

    return-void

    :cond_2
    move/from16 v0, v16

    if-ne v7, v0, :cond_0

    move/from16 v0, v17

    if-ne v8, v0, :cond_0

    if-eq v14, v15, :cond_1

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    :try_start_1
    aget v2, v12, v2

    sub-int v9, v11, v2

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v19

    throw v2
.end method

.method public getRawOffset()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Landroid/icu/util/TimeZone;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/JavaTimeZone;->isFrozen:Z

    return v0
.end method

.method public observesDaylightTime()Z
    .locals 6

    sget-object v3, Landroid/icu/impl/JavaTimeZone;->mObservesDaylightTime:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v4, Landroid/icu/impl/JavaTimeZone;->mObservesDaylightTime:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    return v3

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/icu/util/TimeZone;->observesDaylightTime()Z

    move-result v3

    return v3

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/icu/impl/JavaTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen JavaTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/util/TimeZone;->setRawOffset(I)V

    return-void
.end method

.method public unwrap()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method
