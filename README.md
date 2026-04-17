<div align="center">
  <h1>Advanced Memory Allocation System</h1>
</div>

<div align="center">
  <p>
    This project extends the memory management system of <b>mCertiKOS</b> by introducing support for Contiguous and Superpage-Aware Memory Management with <b>buddy allocation</b>, <b>4MB superpages</b>, and dynamic heap management. The goal is to improve performance and efficiency by reducing fragmentation, minimizing TLB misses, and enabling large memory allocations.
  </p>
</div>

<div>
  <div align="left">
    <h2>Features</h2>
<ul>
  <li>Buddy Allocation System (2<sup>n</sup> blocks)</li>
  <li>Free List-based memory management</li>
  <li>Superpage allocation &amp; deallocation (4MB)</li>
  <li>Memory zone division to reduce fragmentation</li>
  <li>Dynamic heap management using <code>brk()</code> system call</li>
  <li>Container-based memory usage tracking</li>
  <li>Efficient Allocation Table (AT[]) for metadata</li>
</ul>
  </div>
      <div align="right">
    <img width="250" src="https://github.com/user-attachments/assets/ccd521d0-6e04-4518-9d74-d3f85cdacfe7" />
  </div>
</div>


<h2>Key Concepts Used</h2>
<table border="1" cellspacing="0" cellpadding="8">
  <tr>
    <th>#</th>
    <th>Concept</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Paging &amp; Virtual Memory</td>
  </tr>
  <tr>
    <td>2</td>
    <td>Page Tables &amp; Page Directories</td>
  </tr>
  <tr>
    <td>3</td>
    <td>Two-Level Paging</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Translation Lookaside Buffer (TLB)</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Page Size Extension (PSE)</td>
  </tr>
  <tr>
    <td>6</td>
    <td>System Calls (<code>brk</code>)</td>
  </tr>
  <tr>
    <td>7</td>
    <td>Contiguous Memory Allocation</td>
  </tr>
  <tr>
    <td>8</td>
    <td>Fragmentation Management</td>
  </tr>
</table>


<div>
  <div align="right">
  <h2>Technologies &amp; Tools</h2>

  <table border="1" cellspacing="0" cellpadding="8">
    <tr>
      <th>Category</th>
      <th>Details</th>
    </tr>
    <tr>
      <td><b>Language</b></td>
      <td>C</td>
    </tr>
    <tr>
      <td><b>OS Framework</b></td>
      <td>mCertiKOS</td>
    </tr>
    <tr>
      <td><b>Architecture</b></td>
      <td>x86</td>
    </tr>
    <tr>
      <td><b>Development Tools</b></td>
      <td>
        VMware<br>
        VS Code<br>
        GCC Compiler<br>
        Makefile<br>
        QEMU Emulator
      </td>
    </tr>
  </table>
</div>
  <div align="left">
    <img width="250" src="https://github.com/user-attachments/assets/1b88d47a-37ee-4acf-9d03-d5adb3bcfedc" />
  </div>
</div>


<h2 align="center">System Architecture</h2>
<img width="300" align="center" alt="OS Flowchart" src="https://github.com/user-attachments/assets/bed9d458-3156-4f4b-8a75-73fd950c6aba" />



