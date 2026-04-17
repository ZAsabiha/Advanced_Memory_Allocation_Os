<div align="center">
  <h1>Advanced Memory Allocation System</h1>
</div>

<div align="center">
  <p>
    This project extends the memory management system of <b>mCertiKOS</b> by introducing support for Contiguous and Superpage-Aware Memory Management with <b>buddy allocation</b>, <b>4MB superpages</b>, and dynamic heap management. The goal is to improve performance and efficiency by reducing fragmentation, minimizing TLB misses, and enabling large memory allocations.
  </p>
</div>

<div>
  <h2>Features</h2>
  <img width="250" align="right" src="https://github.com/user-attachments/assets/ccd521d0-6e04-4518-9d74-d3f85cdacfe7" />
  <div align="left">
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
</div>


<h2>Key Concepts Used</h2>
<img width="250" align="right" alt="ai_shigoto" src="https://github.com/user-attachments/assets/22755402-ab0b-444d-bb47-c700c67d0afb" />
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
    <td>Translation Lookaside Buffer (TLB)</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Page Size Extension (PSE)</td>
  </tr>
  <tr>
    <td>5</td>
    <td>System Calls (<code>brk</code>)</td>
  </tr>
  <tr>
    <td>6</td>
    <td>Contiguous Memory Allocation</td>
  </tr>
</table>


<div>
  <h2 align="right">Technologies &amp; Tools</h2>
  <img width="300" align="left" alt="computer11_sleep" src="https://github.com/user-attachments/assets/dfb8e1c3-38fe-455d-ac46-71789ddad1f6" />

<div align="right">
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
</div>


<h2 align="center">System Architecture</h2>
<div align="center">
  <img width="250" style="border: 10px solid #000000" alt="OS Flowchart" src="https://github.com/user-attachments/assets/bed9d458-3156-4f4b-8a75-73fd950c6aba" />
</div>



<h2>How to run</h2>

clone the repository :

<pre>
<code>
git clone https://github.com/ZAsabiha/Advanced_Memory_Allocation_Os.git
cd &lt;project-folder&gt;
</code>
</pre>

open in vscode/terminal in a virtual machine. then run these commands:

<pre>
<code>
make clean
make TEST=1
</code>
</pre>

This will:
<ul>
  <li>Compile the kernel</li>
  <li>Launch the OS using QEMU</li>
  <li>Enable the test cases</li>
</ul>

<h2>Team Members</h2>

<table border="1" cellspacing="0" cellpadding="10">
  <tr>
    <th>Team Member</th>
    <th>Contribution</th>
  </tr>

  <tr>
    <td>Israt Risha Ivey</td>
    <td>Superpage allocation in physical layer and page accessing from virtual address</td>
  </tr>

  <tr>
    <td>Ramisa Anan Rahman</td>
    <td>brk syscall and heap management</td>
  </tr>

  <tr>
    <td>Ridika Naznin</td>
    <td>Page alignment and user process space allocation</td>
  </tr>

  <tr>
    <td>Zannatul Adon Sabiha</td>
    <td>Free list, buddy allocation system, page allocation and deallocation in physical layer virtual layer</td>
  </tr>

  <tr>
    <td>Jarin Subha Sneha</td>
    <td>Superpage allocation in physical layer, TLB monitoring</td>
  </tr>
</table>





