"use client"; // This is a client component

import Image from "next/image";
import { useEffect, useState } from "react";

export default function Home() {
  const [data, setData] = useState(null);

  const makeRequest = async () => {
    const data = await fetch("http://localhost:3001/");
    const json = await data.json();
    setData(json);
  };
  useEffect(() => {
    makeRequest();
  }, []);

  return <div>{data && <div>{data.message} v2.0</div>}</div>;
}
